#ifndef IDEMPOTENCE_H
#define IDEMPOTENCE_H
#pragma once
/***************************************************************************
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

/** \file idempotence.h
 *  This file defines `struct idempotence.h`
 */

#include <string>

/** \brief `struct idempotence` encapsulates an API for
 *  the special handling of `#if`-scopes intended to be idempotent
 *
 *  Scopes such as:
 *
 *  `#ifndef GUARD`
 *  `#define GUARD`
 *  ...
 *  `#endif`
 *
 *  or
 *
 *  `#if ! defined GUARD`
 *  `#define GUARD`
 *  ...
 *  `#endif`
 *
 *  or
 *
 *  `#if ! defined(GUARD)`
 *  `#define GUARD`
 *  ...
 *  `#endif`
 *
 *  are almost always intended to be entered once by the preprocessor with
 *  `GUARD` undefined and not entered again because `GUARD` has been defined.
 *  `GUARD` normally has no truth-functional role but to enforce this
 *  idempotence.
 *
 *  When such a scope is parsed by coan, unless `-UGUARD` or `--implicit`
 *  is in force, the controlling condition of such a scope would be evaluated
 *  with indeterminate truth-value if evaluated in the usual way. Consequently
 *  all enclosed `#if`s would inherit indeterminate truth value, even in
 *  a configuration that would otherwise resolve them. No `#define` or
 *  '#undef` directives in such a scope would become operative. No simplification
 *  would occur within such a scope.
 *
 *  This would be a perverse outcome, especially as the entire body of a header
 *  file is always enclosed in such an idempotence scope, or preceded by
 *  `#pragma once`.
 *
 *  For a user to avoid this outcome by adding `-UGUARD` to the configuration
 *  would be impractical because of the frequency of header-guards, and would
 *  generate spurious diagnostics because the `#define GUARD` directive of a
 *  header guard would contradict the `-UGUARD` of the configuration.
 *
 *  Coan accordingly identifies`#if`-scopes that exhibit an idempotence
 *  pattern and, if the guard symbol  is not configured either globally or
 *  transiently, then by default the `#if-condition is regarded as satified, so
 *  that the scope is entered. The guard-symbol then becomes transiently defined,
 *  making the scope idempotent. This behaviour can be disabled by
 *  specifying the commandline option `--no-idempotence`.
 *
 */
struct idempotence {

    /** \brief enumerated states of progression to identifying an
     *  idempotent `#if` construct.
     */
    enum waypoint {
        none, ///< Outside any idempotence condition
        got_if,  ///< Reached `#if`
        got_if_not, ///< Reached `#if !`
        got_if_not_defined, ///< Reached `#if ! defined
        got_ifndef = got_if_not_defined, ///< Reached `#ifndef`
        got_define, ///< Reached `#define` after previous states
    };

    /// Set the latest possibly occuring in `#ifndef` or `#if ! defined`
    static void at_symbol(std::string const & symbol) {
        if (current_waypoint() == waypoint::got_ifndef) {
            last_ifndef_symbol() = symbol;
        } else if (current_waypoint() == waypoint::got_define) {
            last_define_symbol() = symbol;
        } else {
            last_ifndef_symbol().clear();
            last_define_symbol().clear();
        }
    }

    /// Get the latest symbol occuring in `#ifndef` or `#if ! defined`
    static std::string const & get_last_ifndef_symbol() {
        return last_ifndef_symbol();
    }

    /// Get the latest symbol occuring in `#define`
    static std::string const & get_last_define_symbol() {
        return last_define_symbol();
    }

    /// Get the current waypoint
    static waypoint get_waypoint() {
        return waypoint(current_waypoint());
    }

    /// Update the current waypoint at an `#if` directive
    static void at_if() {
        current_waypoint() = waypoint_thunk(waypoint::got_if);
    }

    /// Update the current waypoint at a `!` or `not` operator
    static void at_not() {
        ++current_waypoint();
    }

    /// Update the current waypoint at a `defined` operator
    static void at_defined() {
        ++current_waypoint();
    }

    /// Update the current waypoint at a `#define` directive
    static void at_define() {
        ++current_waypoint();
    }

    /// Update the current waypoint at an `#indef` directive
    static void at_ifndef() {
        current_waypoint() = waypoint_thunk(waypoint::got_ifndef);
    }

    /** \bried Update the current waypoint at any point that
     *  cannot be within an idempotence construct
     */
    static void at_start() {
        current_waypoint() = waypoint::none;
    }

    /** \brief Check whether an idempotence construct is complete at the
     *  time of calling.
     *
     *  If a completed idempotence construct is detected then an
     *  informational diagnostic is issued and the `#if`-state
     *  is adjusted to TRUE_PREFIX.
     */
    static bool check();

private:

    /// The last symbol that occurred in `#ifndef` or `#if ! defined`.
    static std::string & last_ifndef_symbol() {
        static std::string s;
        return s;
    }
    /// The last symbol that occurred in `#define`.
    static std::string & last_define_symbol() {
        static std::string s;
        return s;
    }

    /** \brief Return waypoint `wp` unless `--no-idempotence` is in effect,
     * else `waypoint::none`
     */
    static waypoint waypoint_thunk(waypoint wp);

    /// The current waypoint
    static int & current_waypoint() {
        static int wp = waypoint::none;
        return wp;
    }

    /** \brief Say whether an idempotence construct is detected at the
     *  time of calling
     */
    static bool detected() {
        return   current_waypoint() == waypoint::got_define &&
        last_ifndef_symbol().size() &&
        last_ifndef_symbol() == last_define_symbol();
    }
};

#endif // EOF

