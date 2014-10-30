#ifndef IF_CONTROL_H
#define IF_CONTROL_H
#pragma once
/***************************************************************************
 *   Copyright (C) 2004, 2006 Symbian Software Ltd.                        *
 *   All rights reserved.                                                  *
 *   Copyright (C) 2002, 2003 Tony Finch <dot@dotat.at>.                   *
 *   All rights reserved.                                                  *
 *   Copyright (C) 1985, 1993 The Regents of the University of California. *
 *   All rights reserved.                                                  *
 *   Copyright (C) 2007-2014 Mike Kinghan, imk@burroingroingjoing.com      *
 *   All rights reserved.                                                  *
 *                                                                         *
 *   Contributed by Mike Kinghan, imk@burroingroingjoing.com,              *
 *   derived from the code of Tony Finch                                   *
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
#include "line_type.h"
#include <cstddef>
#include <algorithm>

/** \file if_control.h
 *   This file defines `struct if_control`
 */

/** \brief Maintains state with respect to `#if` logic.
 *
 *  `struct if_control` maintains state with respect to
 *  `#if` logic in the course of parsing and provides queries
 *  on this state.
 */
struct if_control {

	/// symbolic constants denoting the if-control states.
	enum if_state {
	    /// We are outside any `if`
	    IF_STATE_OUTSIDE,
	    /// We have a false `if` followed by false `elif`
	    IF_STATE_FALSE_PREFIX,
	    /// The first non-false `(el)if` is true
	    IF_STATE_TRUE_PREFIX,
	    /// The first non-false `(el)if` is insoluble
	    IF_STATE_PASS_MIDDLE,
	    /// We have a false `elif` after a pass state
	    IF_STATE_FALSE_MIDDLE,
	    /// We have a true `elif` after a pass state
	    IF_STATE_TRUE_MIDDLE,
	    /// We have an `else` after a pass state
	    IF_STATE_PASS_ELSE,
	    /// We have an `else` after a true state
	    IF_STATE_FALSE_ELSE,
	    /// We have an `else` after only false states
	    IF_STATE_TRUE_ELSE,
	    /// All `elifs` after a true are false
	    IF_STATE_FALSE_TRAILER,
	    /// Count of if-control states
	    IF_STATE_COUNT
	};

	/**	\brief Transition the if-control state given an evaluated
	 *   line type.
     *
	 *  The function advances a state-machine whose parameters are the
	 *  current input linetype and the current if-control state. The
	 *  transition performs the appropriate action to despatch the
	 *  line just evaluated and sets a new if-state.
     *
	 *  \param	linetype	The linetype of the last evaluated input line.
	 */
	static void transition(line_type linetype) {
        if_state state = _pscope_info_[_depth_]._if_state;
        transition_table[state][linetype]();
    }


	/// Is the current line outside any `#if` scope?
	static bool unconditional_line() {
		return _pscope_info_[_depth_]._if_state == IF_STATE_OUTSIDE;
	}

	/**	\brief Is the current line outside any `#if` scope or in the scope of
	 *  only satisfied `#if`s?
	 */
	static bool must_reach_line() {
        return _pscope_info_[_depth_]._aggregate_truth_value ==
            truth_value::True;
    }

	/// Is the current line in the scope of some unsatisfied `#if?
    static bool cannot_reach_line() {
        return _pscope_info_[_depth_]._aggregate_truth_value ==
            truth_value::False;
    }

	/**	\brief Is the current line in the scope of some `#if` whose
	 *  truth-value is undetermined.
	 */
    static bool may_reach_line() {
        return _pscope_info_[_depth_]._aggregate_truth_value !=
            truth_value::False;
    }

	/// Get the starting line number of the current `#if` sequence.
	static size_t if_start_line() {
		return _pscope_info_[_depth_]._start_line;
	}

	/// Get the current depth of `#if`-nesting.
	static size_t if_depth() {
		return _depth_;
	}

	/// Get the current `#if`-state.
	static if_state state() {
		return _pscope_info_[_depth_]._if_state;
	}

	/// Set the `#if`-state at the current nesting depth.
	static void set_state(if_state is) {
        scope_info * psi = _pscope_info_ + _depth_ - 1;
        truth_value agg_tv = psi++->_truth_value;
        psi->_if_state = is;
        truth_value tv = state_truth_values[is];
        psi->_truth_value = tv;
        psi->_aggregate_truth_value =
            truth_value(std::min(int(tv),int(agg_tv)));
	}

	/// Set the idempotence flag at the current nesting depth.
	static void set_idempotence(bool idempotent = true) {
		_pscope_info_[_depth_]._by_idempotence = idempotent;
	}

	/// Reset the depth of `#if`-nesting to 0.
	static void top() {
		_depth_ = 0;
	}

private:

	/// Enumeration of possible true values of `#if`s
	enum class truth_value : int {
	    /// Falsified by configuration
	    False = 0,
	    /// Verified by configurarion
	    Indeterminate = 1,
	    /// Neither falsified nor verified by configuration
	    True = 2
	};

    /// Characteristics of the scope at a given level if nesting
    struct scope_info {
        /// The `if_state` at this scope
        if_state _if_state = IF_STATE_OUTSIDE;
        /// Was the scope entered by virtue of idempotence recognition
        bool _by_idempotence = false;
        /// The line number at which the scope starts
        unsigned _start_line = 0;
        /// The true-value of the `if_state` at this scope
        truth_value _truth_value = truth_value::True;
        /// The truth-value of the aggregated `if_state`s at this_scope
        truth_value _aggregate_truth_value = truth_value::True;
    };

    /** \brief Maximum depth of hash-if nesting.
     *
     *   c.f. Minimum translation limits from ISO/IEC 9899:1999 5.2.4.1
     */
    static const unsigned MAXDEPTH = 64;

	/// Type of `#if`-state transition functions.
	using transition_t = void();

	/** \brief The `#if`-state transition table.
     *
	 *   An array of pointers to state transition functions.
	 */
	static transition_t * const transition_table[IF_STATE_COUNT][LT_SENTINEL];

	/// Lookup table of truth-values corresponding to if_states
	static truth_value state_truth_values[IF_STATE_COUNT];

	/// Increment the `#if`-nesting depth.
	static void nest();

	/// State transition
	static void Strue();

	/// State transition
	static void Sfalse();

	/// State transition
	static void Selse();

	/// State transition
	static void Pelif();

	/// State transition
	static void Pelse();

	/// State transition
	static void Pendif();

	/// State transition
	static void Dfalse();

	/// State transition
	static void Delif();

	/// State transition
	static void Delse();

	/// State transition
	static void Dendif();

	/// State transition
	static void Fdrop() {
		nest();
		Dfalse();
	}

	/// State transition
	static void Fpass() {
		nest();
		Pelif();
	}

	/// State transition
	static void Ftrue() {
		nest();
		Strue();
	}

	/// State transition
	static void Ffalse() {
		nest();
		Sfalse();
	}

	/// State transition
	static void Mpass();

	/// State transition
	static void Mtrue();

	/// State transition
	static void Melif();

	/// State transition
	static void Melse();

	/// Diagnose an input orphan `#elif` on `cerr`
	static void orphan_elif();

	/// Diagnose an input orphan `#else` on `cerr`
	static void orphan_else();

	/// Diagnose an input orphan `#endif` on `cerr`
	static void orphan_endif();

	/// Diagnose unexpected end of input on `cerr`
	static void early_eof();

	/// Array of `scope_info` indexed by nesting depth
	static scope_info _scope_info_[MAXDEPTH + 1];
	/** \brief pointer to the logically first element of the `scope_info` array.
	 * The actual first element is reserved as an optimization accessory
	 */
	static scope_info * _pscope_info_;
	/// Current depth of `#if`-nesting
	static unsigned	_depth_;

};

#endif // EOF
