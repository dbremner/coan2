#ifndef ARGUMENT_LIST_H
#define ARGUMENT_LIST_H
/***************************************************************************
 *   Copyright (C) 2007-2013 Mike Kinghan, imk@burroingroingjoing.com      *
 *   All rights reserved.                                                  *
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
#include "parameter_list_base.h"

/*! \file argument_list.h
    This file class `argument_list`.
*/

/*! \brief Class `argument_list` encapsulates a list of macro arguments, i.e.
    arguments to a macro reference.

    Associated with each argument is a boolean flag indicating whether
    that argument is eligible for macro expansion. By default this flag
    is false.
*/
struct argument_list : innards::parameter_list_base {

    using base = innards::parameter_list_base;

	//! Explicitly construct from a `parameter_list_base`
	explicit argument_list(parameter_list_base const & parms)
	: base(parms){}

	/*! \brief Construct for `n` arguments

		If `n` > 0, the list of placeholder arguments `$1,...,$n` is
		constructed.
	*/
	explicit argument_list(size_t n = 0)
	: base(n){}

	/*! \brief Explicitly construct given a text pointer.
	    \param chew On entry, a `chewer` referencing the text offset from which
			to scan. On return receives a `chewer` referencing the first
			offset not consumed.
	*/
	template<class CharSeq>
	explicit argument_list(chewer<CharSeq> & chew) {
		read(chew);
	}

	//! Equality
	bool operator==(argument_list const & other) const {
		return parameter_list_base::operator==(other) &&
            (_expand_flags == other._expand_flags ||
                *_expand_flags == *other._expand_flags);
	}

	//! Inequality
	bool operator!=(argument_list const & other) const {
		return !(*this == other);
	}

	/*! \brief Read the `argument_list` from a text pointer.

	    \param chew On entry, a `chewer` referencing the text offset from which
			to scan. On return receives a `chewer` referencing the first
			offset not consumed.

	    The `argument_list` is emptied and replaced by parsing the text
	    from `chew`
	 */
    template<class CharSeq>
	void read(chewer<CharSeq> & chew);

	/*! \brief Say whether a character can validly appear in a member of
	    an argument list.

	    \param  ch  The character to be tested.
	    \return True iff `ch` can validly appear in a member of an
	        argument list.
	*/
	static bool is_valid_char(char ch) {
		return ch && ch != ',' && ch != '(' && ch != ')';
	}

	/*! Set the nth expand-flag to indicate whether the nth argument,
        if any, is eligible for macro expansion.

        \return True iff the nth argument exists.
    */
	bool set_expandable(size_t n, bool expandable = false)  {
        if (_expand_flags && n < _expand_flags->size()) {
            (*_expand_flags)[n] = expandable;
            return true;
        }
        return false;
	}

	/*! Say whether the nth argument, if any, is eligible for macro expansion.

        \return True iff the nth argument exists and is expandable
    */
	bool is_expandable(size_t n) const {
        return _expand_flags && n < _expand_flags->size() ?
            (*_expand_flags)[n] : false;
	}

private:

    using parameter_list_base::none;
    using parameter_list_base::empty_param;
    using parameter_list_base::unclosed;

    /*! The nth flag indicates whether the nth argument is eligible
        for macro expansion.
    */
    std::shared_ptr<std::vector<bool>> _expand_flags;

	/*! \brief Append an argument to the argument list.
	    \param  arg    The putative argument to be appended.
	    \return True if `arg` has a non-0-length, else false,
	        in which case the `argument_list` is unmodified.
	*/
	bool append(std::string const & arg);
};

#endif //EOF
