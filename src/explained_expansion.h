#ifndef EXPLAINED_EXPANSION_H
#define EXPLAINED_EXPANSION_H
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
#include "expansion_base.h"

/*! \file explained_expansion.h
    This file defines class `explained_expansion`.
*/

/*! \brief Class `explained_expansion` encapsulates
	macro-expansion of a reference when the `--explain` option is operative
*/
struct explained_expansion : expansion_base
{
	//! Construct from a reference and optional parent
    explained_expansion(
        reference const & ref,
        explained_expansion * parent = nullptr)
    : 	expansion_base(ref),_parent(parent){}

	~explained_expansion() override = default;

	/*! Perform the explained expansion of the reference, returning the number
		of edits applied.
	*/
	unsigned expand();

protected:

	//! Expand a string, returning the number of edits applied
	unsigned expand(std::string & str) override;

	/*! Recursively replace remaining occurrences of a reference in the
		parents of the explained_expansion and optionally the explained_expansion itself.

		\param e An explained_expansion, s.t. that each ocurrence of that explained_expansion's
            reference in `pb` is to replaced with its expanded value.
        \param in The replacement string.
		\param do_self If true, this explained_expansion itself is edited and
			then recursive parents. If false, the parent of the
			explained_expansion, if any, is edited and then recursive parents.
        \return The number of replacements made.

		In each explained_expansion reached, if
		`args_explained_expansion_done()` is false then occurrences of `ref` are
		replaced with `replacement` throughout the expanded argument at
		its `cur_arg_index() and subsqequent arguments. Otherwise `ref`
		is replaced with `replacement` throughout the current value of
		the explained_expansion.
	*/
	unsigned bubble_edit(
		explained_expansion const & e,
		bool do_self = true);

    void report_intermediate_value();

	/*! Pointer to the `explained_expansion`, if any, of which this one is
		a sub-expansion
	*/
	explained_expansion * _parent = nullptr;

	//! Sequential number of the explained expansion step.
	unsigned _step = 0;

};

#endif // EOF
