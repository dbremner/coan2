/***************************************************************************
 *   Copyright (C) 2007-2013 Mike Kinghan, imk@burroingroingjoing.com      *
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
 *   Neither the name of Mike Kinghan nor the names of its contributors    *
 *   may be used to endorse or promote products derived from this software *
 *   without specific prior written permission.                            *
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
#include "canonical.h"
#include "chew.h"
#include "symbol.h"
#include "options.h"

using namespace std;

/*! \file canonical_string.cpp
	This file implements the specializations of template class `canonical`
*/

bool canonical_base::cxx() const {
	return !options::plaintext();
}

template<>
template<class CharSeq>
void canonical<symbol>::canonicalize(chewer<CharSeq> & chew)
{
	chew(continuation);
	if (chew && symbol::is_start_char(*chew)) {
		_canonical.append(1,*chew);
		chew(+1,continuation);
		for ( ; chew && symbol::is_valid_char(*chew);
				chew(+1,continuation)) {
			_canonical.append(1,*chew);
		}
	}
}

template
void canonical<symbol>::canonicalize(chewer<std::string> & chew);
template
void canonical<symbol>::canonicalize(chewer<parse_buffer> & chew);

template<>
template<class CharSeq>
void canonical<string>::canonicalize(chewer<CharSeq> & chew)
{
	chew(greyspace);
	if (!chew) {
		return;
	}
	for (	;; ) {
		_canonical += *chew;
		if (!++chew) {
			break;
		}
		chew(continuation);
		if (!chew) {
			break;
		}
		size_t mark = size_t(chew);
		chew(greyspace);
		if (mark != size_t(chew)) {
			_canonical += ' ';
		}
		if (!chew) {
			break;
		}
	}
	size_t len = _canonical.length();
	if (_canonical[len - 1] == ' ') {
		_canonical.resize(len - 1);
	}
}

template
void canonical<std::string>::canonicalize(chewer<std::string> & chew);
template
void canonical<std::string>::canonicalize(chewer<parse_buffer> & chew);

template<>
template<class CharSeq>
void canonical<macro_argument>::canonicalize(chewer<CharSeq> & chew)
{
	int paren_balance = 0;
	for (chew(c_comment); chew;
			++chew,chew(c_comment)) {
		if (*chew == '(') {
			++paren_balance;
			_canonical += '(';
			continue;
        }
		if (*chew == ')') {
			if (--paren_balance < 0) {
				break;
			}
			_canonical += ')';
			continue;
		}
		if (*chew == ',') {
			if (paren_balance <= 0) {
				break;
			}
			_canonical += ',';
			continue;
		}
		if (!isspace(*chew)) {
            _canonical += *chew;
            continue;
		}
		if (_canonical.size()) {
            auto last = _canonical.back();
            if (!isspace(last) && (last == '#' || !ispunct(last))) {
                _canonical += ' ';
            }
		}
	}
}

template
void canonical<macro_argument>::canonicalize(chewer<std::string> & chew);
template
void canonical<macro_argument>::canonicalize(chewer<parse_buffer> & chew);

/* EOF */
