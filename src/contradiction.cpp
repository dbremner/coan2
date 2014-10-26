/***************************************************************************
 *   Copyright (C) 2004, 2006 Symbian Software Ltd.                        *
 *   All rights reserved.                                                  *
 *   Copyright (C) 2007-2014 Mike Kinghan, imk@burroingroingjoing.com      *
 *   All rights reserved.                                                  *
 *                                                                         *
 *   Contributed originally by Mike Kinghan, imk@burroingroingjoing.com    *
 *                                                                         *
 *   Redistribution and use in source and binary forms, with or without    *
 *   modification, are permitted provided that the following conditions    *
 *   are met:                                                              *
 *                                                                         *
 *   Redistributions of source code must retain the above copyright        *
 *   notice, this list of conditions and the following disclaimer.         *
 *                                                                         *
 *   Redistributions in binary form must reproduce the above copyright     *
 *   notice, this list of conditions and the following disclaimer in the   *
 *   documentation and/or other materials provided with the distribution.  *
 *                                                                         *
 *   Neither the name of Symbian Software Ltd. nor the names of its        *
 *   contributors may be used to endorse or promote products derived from  *
 *   this software without specific prior written permission.              *
 *                                                                         *
 *   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   *
 *   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT     *
 *   LIMITED TO, THE IMPLIED WARRANTIES OF  MERCHANTABILITY AND FITNESS    *
 *   FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE        *
 *   COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,   *
 *   INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,  *
 *   BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS *
 *   OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED    *
 *   AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,*
 *   OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF *
 *   THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH  *
 *   DAMAGE.                                                               *
 *                                                                         *
 **************************************************************************/

#include "contradiction.h"
#include "diagnostic.h"
#include "io.h"
#include "if_control.h"
#include "line_despatch.h"
#include "canonical.h"
#include "symbol.h"
#include "reference.h"
#include <iostream>

/** \file contradiction.cpp
 *   This file implements class `contradiction`
 */
using namespace std;

std::unique_ptr<contradiction> contradiction::_pending_;

void contradiction::discharge()
{
	diagnostic_base::flush(_reason_code);
    if (_cause == cause::undefining_defined) {
        if (options::have_source_output()) {
            cout << _line;
            line_despatch::lines_suppressed() -= _lines_suppressed_overshoot;
        }
        if (!_is_conditional) {
            auto sym = _reference.callee();
            sym->originate(symbol::provenance::transient);
            sym->undef();
        }
        _reference.report();
    }
}

symbol::locator contradiction::last_conflicted_symbol() {
    return _pending_ ? _pending_->_reference.callee()
    : symbol::locator();
}

contradiction::contradiction(cause why, bool is_conditional,
                    symbol::locator loc, string const & new_defn)
:   _lines_suppressed_overshoot(line_despatch::cur_line().extensions() + 1),
    _reference(loc),
    _cause(why),
    _line(line_despatch::cur_line().str()),
    _is_conditional(is_conditional)
{
    size_t posn = _line.find_first_of("\r\n");
    if (is_conditional) {
		info_contradiction diagnostic;
        switch(why) {
        case cause::differently_redefining:
            diagnostic << "\"" << _line.substr(0,posn)
                << "\" conditionally contradicts \"-D" << loc->id()
                << '=' << *loc->defn() << '\"';
            break;
        case cause::defining_undefined:
            diagnostic << "\"" << _line.substr(0,posn)
                << "\" conditionally contradicts \"-U" << loc->id() << '\"';
            break;
        case cause::undefining_defined:
            diagnostic << "\"" << _line.substr(0,posn)
                << "\" conditionally contradicts \"-D" << loc->id()
                << '=' << *loc->defn() << '\"';
            break;
        default:
            assert(false);
        }
		_reason_code = diagnostic.encode();
		diagnostic << defer();
    } else if(options::no_override()) {

		error_contradiction diagnostic;
        switch(why) {
        case cause::differently_redefining:
            diagnostic << "\"" << _line.substr(0,posn)
                << "\" contradicts \"-D" << loc->id()
                << '=' << *loc->defn() << '\"';
            break;
        case cause::defining_undefined:
            diagnostic << "\"" << _line.substr(0,posn) << "\" contradicts -U"
                << loc->id() << '\"';
            break;
        case cause::undefining_defined:
            diagnostic << "\"" << _line.substr(0,posn)
                << "\" contradicts \"-D" << loc->id()
                << '=' << *loc->defn() << '\"';
            break;
        default:
            assert(false);
        }
		_reason_code = diagnostic.encode();
		diagnostic << defer();
	} else {
		warning_transient_override diagnostic;
        switch(why) {
        case cause::differently_redefining:
            diagnostic << "\"-D" << loc->id() << '=' << new_defn
            << "\" has been assumed for the current file, overriding \""
            "-D" << loc->id() << '=' << *loc->defn() << '\"';
            break;
        case cause::defining_undefined:
            diagnostic << "\"-D" << loc->id() << '=' << new_defn
            << "\" has been assumed for the current file, overriding \""
            "-U" << loc->id() << '\"';
            break;
        case cause::undefining_defined:
            diagnostic << "\"-U" << loc->id()
                << "\" has been assumed for the current file, overriding \""
                "-D"<< loc->id() << '=' << *loc->defn() << '\"';
            break;
        default:
            assert(false);
        }
		_reason_code = diagnostic.encode();
		diagnostic << defer();
	}
}

void contradiction::forget() {
    if (_pending_) {
        diagnostic_base::discard(_pending_->_reason_code);
        _pending_.reset();
    }
}

/* EOF*/
