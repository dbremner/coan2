#ifndef CANONICAL_H
#define CANONICAL_H
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

#include "platform.h"
#include "chew.h"
#include "parse_buffer.h"
#include "traits.h"
#include <string>

struct symbol;

/*! \file canonical_string.h
	This file defines:
	- class `canonical_base`
	- class template class `canonical`
*/

//! A tag class for parameterizing template class `canonical<What>`
struct macro_argument {};


//! A base for classes representing canonical forms of types.
struct canonical_base {
	//! Cast the canonical representation to string.
	operator std::string () const {
		return _canonical;
	}

#if CXX11_HAVE_DECL_DEFAULT && !CXX11_HAVE_NON_PUBLIC_DEFAULT_DECL
	//! Default constructor
	canonical_base() = default;
	//! Copy constructor
	canonical_base(canonical_base const &) = default;
	//! Assignment
	canonical_base & operator=(canonical_base const &) = default;
#endif

protected:

#if CXX11_HAVE_DECL_DEFAULT && CXX11_HAVE_NON_PUBLIC_DEFAULT_DECL
	//! Default constructor
	canonical_base() = default;
	//! Copy constructor
	canonical_base(canonical_base const &) = default;
	//! Assignment
	canonical_base & operator=(canonical_base const &) = default;
#endif
	//! Destructor
	~canonical_base() {};

	//! Canonicalizing C/C++ source?
	bool cxx() const;

	//! String storing the canonical representation of a value.
	std::string _canonical;
};

/*! \brief Template class `canonical<What>` encapsulates the canonical
    representation of values of type `What`.

    \tparam What    The type that is canonically represented.
*/
template<class What>
struct canonical : canonical_base {
#if CXX11_HAVE_DECL_DEFAULT
	//! Default constructor
	canonical() = default;
#else
	canonical() {};
#endif

	/*! \brief Constructor

	    Explicitly construct a canonical representation given an
			object that controls a textual sequence.

		\tparam Seq A type controlling a textual sequence.
	    \param  seq A `seq`
	*/
	template<class Seq>
	explicit canonical(Seq & seq) {
		canonicalize(seq);
	}
	template<class CharSeq>
	explicit canonical(chewer<CharSeq> & chew) {
        static_assert(traits::is_random_access_char_sequence<CharSeq>::value,
            ">:[");
		canonicalize(chew);
	}

private:

    template<class CharSeq>
	void canonicalize(chewer<CharSeq> & chew);
	void canonicalize(parse_buffer & pb) {
		chewer<parse_buffer> chew(cxx(),pb);
		canonicalize(chew);
	}
	void canonicalize(std::string & str) {
		chewer<std::string> chew(cxx(),str);
		canonicalize(chew);
	}

};

#endif /* EOF */
