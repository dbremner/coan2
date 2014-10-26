#ifndef CONTRADICTION_H
#define CONTRADICTION_H
#pragma once
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

#include "options.h"
#include "reference.h"
#include <memory>

/*! \file contradiction.h
 *   This file defines class `contradiction`.
 */

/** \brief Class `contradiction` handles contradictions
 *   between commandline options and directives.
 *
 *  The `contradiction` class manages contradictions detected
 *  between commandline `-D` or `-U` options and
 *  in-source `\#define` or `#undef` directives.
 *
 *  If, for example, a commandline `-DFOO` option is given
 *  and an `#undef FOO` directive is parsed in-source,
 *  a contradiction arises. By default the in-source
 *  directive will transiently override the global configuration
 *  and a warning diagnostic will be issued. The `--no-override`
 *  option causes contradictions to be diagnosed as errors.
 */
struct contradiction
{
    /// Reasons for reporting a contadiction.
    enum class cause {
        /// An in-source `#define` differently redefines a -D option,
        differently_redefining,
        /// An in-source `#undef` contradicts a -D option
        undefining_defined,
        /// An in-source `#define` contradicts a -U option
        defining_undefined
    };


	/*! \brief Forget about an apparent contradiction.
     *
     *  The function causes the program to forget about a contradiction
	 *  that would be governed by the `--conflict` policy when later input
	 *  shows it to be innocuous. Its purpose is to cope with the complication
	 *  created by the common precautionary idioms:
     *
	 *  `#undef FOO`
	 *  `#define FOO`
     *
	 *  and:
     *
	 *  `#undef FOO`
	 *  `#define FOO	XYZ`
     *
	 *  These idioms may be encountered when `FOO` is the subject of a
	 *	`--define` option. In this case the precautionary `#undef FOO` will
	 *	at first appear to conflict with that `--define`, but the ensuing
	 *	`#define` will show that the conflict is only apparent.
     *
	 *  To cater for these cases, we defer diagnostic action on the
	 *  `#undef` until we see what follows. If a `#define` follows that
	 *  agrees with the `--define` options, with only whitespace and
	 *  comments intervening, then we forget about the pending contradiction.
	 *  This function clears the pending diagnostic action.
     *
	 */
	static void forget();

	/**	\brief Discharge any pending contradiction.
     *
	 *  When an apparent contradiction transpires to be genuine in the light of
	 *	the following input we have a pending diagnostic action to discharge. It
	 *  will either be a warning that global configuration is transiently
	 *  overridden in the current file or, if `--no-override` is in effect, an
	 *  error diagnostic.
	 *
	 *  \return True if a contradiction was pending
     */
	static bool flush() {
        bool discharged = _pending_.get();
        if (_pending_) {
            _pending_->discharge();
            _pending_.reset();
        }
        return discharged;
	}

	/** \brief Save diagnostic details of a potential contradiction.
     *
	 *  \param why The reason for the contradiction.
	 *  \param is_conditional Is the conreadiction conditional or unconditional?
	 *  \param loc Locator of the conflicted symbol.
	 *  \param defn The new conflicting definition of `sym`, if any, by
     *      default the empty string.
     *
	 *  A potential contradiction can require confirmation after
	 *  parsing further input. When an `#undef` directive is read that
	 *  conflicts with a `--define` option, we will diagnose a conflict only
	 *  if the `#undef` is not followed by a `#define` that agrees with the
	 *  conflicting `--define`. This function stores the relevant diagnostic
	 *  for writing if the contradiction is confirmed. Otherwise the
	 *  contradiction is forgotten.
	 */
	static void
	save(cause why, bool is_conditional, symbol::locator loc,
            std::string const & defn = "") {
        _pending_.reset(new contradiction(why,is_conditional,loc,defn));
    }

    /** \brief Emit an diagnostic for a contradiction
	 *  \param is_conditional Is the conreadiction conditional or unconditional?
	 *  \param why The reason for the contradiction.
	 *  \param loc Locator of the conflicted symbol.
	 *  \param new_defn The new conflicting definition of `sym`, if any, by
     *      default the empty string.
	 */
	static void
	discharge(cause why, bool is_conditional, symbol::locator loc,
                std::string const & new_defn = "") {
        save(why,is_conditional,loc,new_defn);
        _pending_->discharge();
        _pending_.reset();
    }


	/** \brief Get a pointer to the latest `#undef`-ed symbol.
     *
	 *   Return a pointer to the symbolthat was undefined by the last
	 *   `#undef` directive that conflicts with
	 *   a `--define` option, if any.
     *
	 *   \return The address of the relevant symbol, or `nullptr` if none.
	 */
	static symbol::locator last_conflicted_symbol();

	/// Say whether an undischarged contradiction is pending.
	static bool pending() {
	    return _pending_.get();
	}

private:

    /** \brief Construct
     *  \param cause The cause of the contradiction
     *  \param is_conditional Is the contradiction in conditional scope?
     *  \param loc Locator of the conflicted symbol
     *  \param new_defn Proposed definition of conflicted symbol, if any.
     */
    contradiction(cause why, bool is_conditional, symbol::locator loc,
            std::string const & new_defn = "");

	/// Emit a pending diagnostic.
 	void discharge();

	/// The reason-code of a pending diagnostic
	unsigned _reason_code = 0;
	/** \brief Number of lines over-counted as suppressed when
	 * when a contradiction is discharged.
	 */
    unsigned _lines_suppressed_overshoot = 0;

	/** \brief Pointer to a reference to the latest `#undef`-ed symbol.
	 *  potentially conflicting with a `--define` option, if any, else null
	 */
	reference _reference;

	/// The cause of a pending diagnostic
	cause _cause = cause::differently_redefining;

	/// The last line conflicting with the global configuration
	std::string _line;
	/// Is last putative conflict conditional?
	bool _is_conditional = false;
	/// Pointer to the pending contradiction, if any, else NULL
	static std::unique_ptr<contradiction> _pending_;
};

#endif /* EOF*/
