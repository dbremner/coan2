#ifndef CHEW_H
#define CHEW_H

/***************************************************************************
 *   Copyright (C) 2007-2013 Mike Kinghan, imk@burroingroingjoing.com      *
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
#include "prohibit.h"
#include "eol.h"
#include <type_traits>
#include <cstddef>
#include <cctype>

/*! \file chew.h
    This defines class `chewer` and several tag classes.
*/


namespace chew_mode
{

//! Do not recognize C/C++ comments
static bool const plaintext = false;
//! Recognize C/C++ comments
static bool const cxxtext = true;

enum class token_type
{
	none,
	whitespace,
	greyspace,
	continuation,
	cxx_comment,
	c_comment,
	string_literal,
	character_literal,
	raw_string_literal,
	header_name,
	code,
	identifier,
	literal_space,
	punctuation,
	number_space,
	stringify,
	token_paste
};
//! A tag class for selecting a chew mode
struct whitespace
{
	static token_type const id = token_type::whitespace;
	whitespace() {}
};
//! A tag class for selecting a chew mode
struct greyspace
{
	static token_type const id = token_type::greyspace;
	greyspace() {}
};
//! A tag class for selecting a chew mode
struct continuation
{
	static token_type const id = token_type::continuation;
	continuation() {}
};
//! A tag class for selecting a chew mode
struct cxx_comment
{
	static token_type const id = token_type::cxx_comment;
	cxx_comment() {}
};

//! A tag class for selecting a chew mode
struct c_comment
{
	static token_type const id = token_type::c_comment;
	c_comment() {}
};

//! A tag class for selecting a chew mode
struct string_literal
{
	static token_type const id = token_type::string_literal;
	string_literal() {}
};

//! A tag class for selecting a chew mode
struct character_literal
{
	static token_type const id = token_type::character_literal;
	character_literal() {}
};

//! A tag class for selecting a chew mode
struct raw_string_literal
{
	static token_type const id = token_type::raw_string_literal;
	raw_string_literal() {}
};

//! A tag class for selecting a chew mode
struct header_name
{
	static token_type const id = token_type::header_name;
	header_name() {}
};

//! A tag class for selecting a chew mode
struct code
{
	static token_type const id = token_type::code;
	code() {}
};

//! A tag class for selecting a chew mode
struct identifier
{
	static token_type const id = token_type::identifier;
	identifier() {}
};

//! A tag class for selecting a chew mode
struct literal_space
{
	static token_type const id = token_type::literal_space;
	literal_space() {}
};

//! A tag class for selecting a chew mode
struct punctuation
{
	static token_type const id = token_type::punctuation;
	punctuation() {}
};

//! A tag class for selecting a chew mode
struct number_space
{
	static token_type const id = token_type::number_space;
	number_space() {}
};

//! A tag class for selecting a chew mode
struct stringify
{
	static token_type const id = token_type::stringify;
	stringify() {}
};

//! A tag class for selecting a chew mode
struct token_paste
{
	static token_type const id = token_type::token_paste;
	token_paste() {}
};


} // namespace chew_mode

//! An exemplar `chew_mode::whitespace`
chew_mode::whitespace const whitespace;
//! An exemplar `chew_mode::greyspace`
chew_mode::greyspace const greyspace;
//! An exemplar `chew_mode::continuation`
chew_mode::continuation const continuation;
//! An exemplar `chew_mode::cxx_comment`
chew_mode::cxx_comment const cxx_comment;
//! An exemplar `chew_mode::c_comment`
chew_mode::c_comment const c_comment;
//! An exemplar `chew_mode::string_literal`
chew_mode::string_literal const string_literal;
//! An exemplar `chew_mode::character_literal`
chew_mode::character_literal const character_literal;
//! An exemplar `chew_mode::raw_string_literal`
chew_mode::raw_string_literal const raw_string_literal;
//! An exemplar `chew_mode::header_name`
chew_mode::header_name const header_name;
//! An exemplar `chew_mode::code`
chew_mode::code const code;
//! An exemplar `chew_mode::identifier`
chew_mode::identifier const identifier;
//! An exemplar `chew_mode::literal_space`
chew_mode::literal_space const literal_space;
//! An exemplar `chew_mode::punctuation`
chew_mode::punctuation const punctuation;
//! An exemplar `chew_mode::number_space`
chew_mode::number_space const number_space;
//! An exemplar `chew_mode::stringify`
chew_mode::stringify const stringify;
//! An exemplar `chew_mode::token_paste`
chew_mode::token_paste const token_paste;

/*! \brief class `chewer` is a cursor-like type that is associated
	with a `sequence_type` upon which it can performs some routine forms
	of lexical scanning.
*/
template<class CharSeq>
struct chewer
{
    using sequence_type = CharSeq;
    using char_type = typename sequence_type::value_type;
    template<class Mode1, class Mode2>
    using void_if  =
    typename std::enable_if<std::is_same<Mode1,Mode2>::value>::type;

	//! Construct from a `sequence_type` and initial offset
	explicit chewer(bool cxx, sequence_type & seq, size_t off = 0)
		: _cxx(cxx),_seq(seq),_buf(nullptr),_cur(off),_len(0) {
		sync();
	}

	/*! \brief Construct, scanning a given `sequence_type` from a given offset.

		\tparam Mode Type of the mode in which to scan
		\param mode A `Mode`
		\param seq The `sequence_type` to scan
		\param off The offset from which to scan.
	*/
	template<class Mode>
	explicit chewer(bool cxx, Mode mode, sequence_type & seq, size_t off = 0)
		: _cxx(cxx), _seq(seq),_buf(nullptr),_cur(off),_len(0) {
		scan<Mode>();
	}

	//! Say whether scanning as C/C++ source
	bool cxx() const {
		return _cxx;
	}

	void sync() {
		_buf = const_cast<char_type *>(_seq.data());
		_len = _seq.size();
	}

	//! Scan in a given mode from a given offset.
	template<class Mode>
	void scan(Mode mode, size_t off) {
		cursor(off);
		scan<Mode>();
	}

	/*! \brief Move the cursor a given amount
		then scan in a given mode from the new cursor position.

		The new cursor position is not range checked.
	*/
	template<class FirstMode, class ...OtherModes>
	void scan(	ptrdiff_t adjust,
				FirstMode first_mode, OtherModes... other_modes) {
		adjust >= 0 ? on(adjust) : back(-adjust);
		scan<FirstMode,OtherModes...>();
	}

	//! Scan in a given mode from the cursor
	template<class FirstMode, class ...OtherModes>
	void scan() {
		sync();
		consume<FirstMode,OtherModes...>();
	}

	//! Say whether a cursor offset is out of range.
	bool overshoot(size_t off = 0) const {
		return _cur + off >= _len;
	}

	//! Get the character at an offset from the cursor.
	char_type atoff(ptrdiff_t off) const {
		return _buf[_cur + off];
	}

	//! Get a reference to the character at an offset from the cursor.
	char_type & atoff(size_t off) {
		return _buf[_cur + off];
	}

	//! `operator[]() const` is an alias for `atoff() const`
	char_type operator[](size_t off) const {
		return atoff(off);
	}

	//! `operator[]()` is an alias for `atoff()`
	char_type & operator[](size_t off) {
		return atoff(off);
	}

	//! Get the cursor position
	size_t cursor() const {
		return _cur;
	}

	//! Get the length of text starting at the cursor.
	size_t remaining() const {
		return _len - _cur;
	}

	//! Set the cursor without scanning.
	void cursor(size_t off) {
		sync();
		_cur = off;
	}

	//! Get the character indexed by the cursor
	char_type curch() const {
		return _buf[_cur];
	}

	//! Get a reference to the character indexed by the cursor
	char_type & curch() {
		return _buf[_cur];
	}

	//! Assign the cursor position
	chewer & operator=(size_t off) {
		cursor(off);
		return *this;
	}

	//! Explicitly cast to `size_t`, returning the cursor position
	explicit operator size_t () const {
		return cursor();
	}

	///@{
	//! Get a [const] reference to the associated `sequence_type`
	sequence_type & buf() {
		return _seq;
	}
	sequence_type const & buf() const {
		return _seq;
	}
	///@}

	//! `operator*() const ` is an alias for `curch() const`.
	char_type operator *() const {
		return curch();
	}
	//! `operator*()` is an alias for `curch()`.
	char_type & operator *() {
		return curch();
	}

	//! Cast to bool, returning `!overshoot()`
	explicit operator bool () const {
		return !overshoot();
	}

	/*! \brief Advance the cursor an amount.
		The new position is not range-chacked.
	*/
	void on(size_t n) {
		_cur += n;
	}

	/*! \brief Retreat the cursor an amount.
		The new position is not range-chacked.
	*/
	void back(size_t n) {
		_cur -= n;
	}

	//! Increment the cursor, returning `*this`
	chewer & operator++() {
		++_cur;
		return *this;
	}

	//! Decrement the cursor, returning `*this`
	chewer & operator--() {
		--_cur;
		return *this;
	}

	//! Advance the cursor an amount, returning `*this`
	chewer & operator+=(size_t n) {
		on(n);
		return *this;
	}

	//! Retreat the cursor an amount, returning `*this`
	chewer & operator-=(size_t n) {
		back(n);
		return *this;
	}

	//! `operator()(move,mode)` calls `scan(move,mode)` returning `*this`
	template<class Mode>
	chewer & operator()(ptrdiff_t move, Mode mode) {
		scan(move,mode);
		return *this;
	}

	//! `operator()(mode)` calls `scan(mode)` returning `*this`
	template<class FirstMode, class ...OtherModes>
	typename
	std::enable_if<!std::is_arithmetic<FirstMode>::value,chewer &>::type
	operator()(FirstMode first_mode, OtherModes... other_modes) {
		scan<FirstMode,OtherModes...>();
		return *this;
	}

	//! No assignment
	no_assign _no_assign;

private:

    template<typename U>
    using if_sequence_is_extensible =
        typename
        std::enable_if<traits::has_extend_method<U>::value>::type;

    template<typename U>
    using if_sequence_is_not_extensible =
        typename
        std::enable_if<!traits::has_extend_method<U>::value>::type;

    ///@{
	//! Extend the associated `sequence_type` by reading more input.
	template<typename U = sequence_type>
	void extend(if_sequence_is_extensible<U> * = nullptr) {
		_seq.extend();
		sync();
	}
	template<typename U = sequence_type>
	void extend(if_sequence_is_not_extensible<U> * = nullptr) {}
	///@}

    ///@{
	/*! \brief Extend the associated `sequence_type` by reading more input,
		possibly replacing `skip` characters ahead of the cursor.
	*/
	template<typename U = sequence_type>
	void extend(size_t skip, if_sequence_is_extensible<U> * = nullptr) {
		_seq.extend(skip);
		sync();
	}
	template<typename U = sequence_type>
	void
	extend(
        size_t skip,
        if_sequence_is_not_extensible<U> * = nullptr) {}
    ///@}

	/*! \brief Test for end of line;

	     Test for a newline sequence of either Unix type or Windows type at a
		 an offset from the cursor.

	     \param	off	The cursor offset

	     \return 0 if cursor offset `off` does not address a newline sequence,
	     otherwise the length of the newline sequence, i,e,
	     1 for Unix '\n', 2 for Windows "\r\n"
	 */
	unsigned eol(size_t off = 0) {
		return ::eol(_seq,_cur + off);
	}

	/*! \brief Say whether a cursor offset addresses a line-continuation.
	    \param  off The cursor offset.
	    \return True iff cursor offset `off` addresses a line-continuation.
	*/
	bool line_continues(size_t off = 0) {
		return atoff(off) == '\\' && eol(off + 1);
	}

    //@{
	//! Scan from the cursor position in a given mode.
	template<class Mode>
    void_if<Mode,chew_mode::continuation> consume() {
        size_t nl_len;
        for ( 	; curch() == '\\' && (nl_len = eol(1)); on(nl_len + 1)) {
            if (overshoot(nl_len + 1)) {
                extend(nl_len);
            }
        }
	}

    template<class Mode>
    void_if<Mode,chew_mode::whitespace> consume() {
        consume<chew_mode::continuation>();
        for (	;!overshoot() && isspace(curch());
                ++_cur,consume<chew_mode::continuation>()) {}
    }

    template<class Mode>
    void_if<Mode,chew_mode::number_space> consume() {
        consume<chew_mode::continuation>();
        size_t mark = _cur;
        if (!overshoot() && curch() == '.') {
            ++_cur;
        }
        if (overshoot() || !isdigit(curch())) {
            _cur = mark;
            return;
        }
        for (++_cur	;!overshoot() && (
                        isalnum(curch()) || curch() == '_' || curch() == '+' ||
                            curch() == '-' || curch() == '.');
                ++_cur,consume<chew_mode::continuation>()) {}
    }

    template<class Mode>
    void_if<Mode,chew_mode::punctuation> consume() {
        consume<chew_mode::continuation>();
        for (	;!overshoot() && ispunct(curch()) &&
            (curch() != '_' && curch() != '\'' && curch() != '\"');
                ++_cur,consume<chew_mode::continuation>()) {}
    }

    template<class Mode>
    void_if<Mode,chew_mode::stringify> consume() {
        consume<chew_mode::continuation>();
        _cur += !overshoot() && curch() == '#';
    }

    template<class Mode>
    void_if<Mode,chew_mode::token_paste> consume() {
        size_t mark = _cur;
        consume<chew_mode::continuation>();
        if ((_cur += !overshoot() && curch() == '#') > mark) {
            consume<chew_mode::continuation>();
            if (!overshoot() && curch() == '#') {
                ++_cur;
            } else {
                _cur = mark;
            }
        }
    }

    template<class Mode>
    void_if<Mode,chew_mode::cxx_comment> consume() {
        consume<chew_mode::continuation>();
        size_t mark = _cur;
        if (!overshoot() && curch() == '/') {
            ++_cur;
            consume<chew_mode::continuation>();
            if (overshoot() || curch() != '/') {
                _cur = mark;
                return;
            }
            for(++_cur;
                !overshoot();
                    ++_cur,consume<chew_mode::continuation>()){};
        }
    }

    template<class Mode>
    void_if<Mode,chew_mode::c_comment> consume() {
        consume<chew_mode::continuation>();
        size_t mark = _cur;
        if (overshoot() || curch() != '/') {
            return;
        }
        ++_cur;
        consume<chew_mode::continuation>();
        if (overshoot() || curch() != '*') {
            _cur = mark;
            return;
        }
        bool closing = false;
        ++_cur;
        consume<chew_mode::continuation>();
        for (	; !overshoot();
                closing = (curch() == '*'),
                ++_cur,consume<chew_mode::continuation>()) {
            if (curch() == '/') {
                if (closing) {
                    ++_cur;
                    return;
                }
            } else {
                size_t nl_len = eol();
                if (nl_len && overshoot(nl_len + 1)) {
                    extend(nl_len);
                }
            }
        }
        eof_in_comment();
    }

    template<class Mode>
    void_if<Mode,chew_mode::string_literal> consume() {
        consume<chew_mode::continuation>();
        consume_enclosed_string<'\"','\"'>();
    }

    template<class Mode>
    void_if<Mode,chew_mode::header_name> consume() {
        consume<chew_mode::continuation>();
        size_t mark = _cur;
        consume_enclosed_string<'<','>'>();
        if (_cur == mark) {
            consume_enclosed_string<'\"','\"'>();
        }
    }

    template<class Mode>
    void_if<Mode,chew_mode::character_literal> consume() {
        consume<chew_mode::continuation>();
        if (overshoot() || curch() != '\'') {
            return;
        }
        size_t mark = _cur;
        ++_cur;
        consume<chew_mode::continuation>();
        bool escape = false;
        for (	; !overshoot();	++_cur,consume<chew_mode::continuation>()) {
            if (curch() == '\'') {
                if (!escape) {
                    ++_cur;
                    return;
                }
                escape = false;
            } else if (curch() == '\\') {
                escape = !escape;
            } else {
                escape = false;
            }
        }
        _cur = mark;
    }

    template<class Mode>
    void_if<Mode,chew_mode::raw_string_literal> consume() {
        consume<chew_mode::continuation>();
        if (overshoot() || curch() != 'R') {
            return;
        }
        size_t mark = _cur;
        ++_cur;
        consume<chew_mode::continuation>();
        if (overshoot() || curch() != '\"') {
            _cur = mark;
            return;
        }
        ++_cur;
        consume<chew_mode::continuation>();
        for (	; !overshoot(); ++_cur,consume<chew_mode::continuation>()) {
            if (!isgraph(curch()) || curch() == '\\') {
                _cur = mark;
                return;
            }
            if (curch() == '(') {
                break;
            }
        }
        ++_cur;
        consume<chew_mode::continuation>();
        for (	; !overshoot(); ++_cur,consume<chew_mode::continuation>()) {
            if (curch() == ')') {
                break;
            }
            size_t nl_len = eol();
            if (nl_len != 0) {
                extend(nl_len);
            }
        }
        ++_cur;
        consume<chew_mode::continuation>();
        for (; !overshoot(); ++_cur,consume<chew_mode::continuation>()) {
            if (!isgraph(curch()) || curch() == '\\') {
                break;
            }
            if (curch() == '\"') {
                ++_cur;
                return;
            }
        }
        missing_terminator(mark,'\"');
    }

    template<class Mode>
    void_if<Mode,chew_mode::greyspace> consume() {
        if (!_cxx) {
            consume<chew_mode::whitespace>();
            return;
        }
        for (	;!overshoot(); ) {
            consume<chew_mode::whitespace>();
            size_t mark = _cur;
            consume<chew_mode::cxx_comment>();
            if (_cur != mark) {
                break;
            }
            consume<chew_mode::c_comment>();
            if (_cur == mark) {
                break;
            }
        }
    }

    template<class Mode>
    void_if<Mode,chew_mode::code> consume() {
        for (	;!overshoot(); ++_cur) {
            consume<chew_mode::greyspace>();
            consume<chew_mode::character_literal>();
            consume<chew_mode::string_literal>();
            consume<chew_mode::raw_string_literal>();
        }
    }

    template<class Mode>
    void_if<Mode,chew_mode::literal_space> consume() {
        consume<chew_mode::character_literal,
                chew_mode::string_literal,
                chew_mode::raw_string_literal>();
    }
    ///@}

	template<class First, class Next, class ...Rest>
	typename std::enable_if<sizeof ...(Rest) == 0>::type
	consume();

	template<class First, class Next, class ...Rest>
	typename std::enable_if<sizeof ...(Rest) != 0>::type
	consume();


	//! Consume text between delimiting characters
	template<char_type Opener, char_type Closer>
	void consume_enclosed_string();

	//! Diagnose a missing terminator character
	void missing_terminator(size_t off, char_type missing);
	//! Diagnose end of file in C-comment.
	void eof_in_comment();

	//! Scanning C/C++ source?
	bool _cxx;
	//! The sequence that the chewer consumes.
	sequence_type & _seq;
	//! Pointer to the buffer of `_seq`
	char_type *_buf;
	//! Cursor offset into the the buffer.
	size_t _cur;
	//! The length of the buffer
	size_t _len;

};

template<class CharSeq>
template<
    typename chewer<CharSeq>::char_type Opener,
    typename chewer<CharSeq>::char_type Closer
>
void chewer<CharSeq>::consume_enclosed_string()
{
	if (overshoot() || curch() != Opener) {
		return;
	}
	size_t mark = _cur++;
	consume<chew_mode::continuation>();
	bool escape = false;
	for (	; !overshoot(); ++_cur,consume<chew_mode::continuation>()) {
		if (curch() == Closer) {
			if (!escape) {
				++_cur;
				return;
			}
			escape = false;
		} else if (curch() == '\\') {
			escape = !escape;
		} else {
			escape = false;
		}
	}
	if (overshoot()) {
		missing_terminator(mark,Closer);
	}
}

template<class CharSeq>
template<class First, class Next, class ...Rest>
typename std::enable_if<sizeof ...(Rest) == 0>::type
chewer<CharSeq>::consume() {
	for (	;!overshoot(); ) {
		size_t mark = _cur;
		consume<First>();
		consume<Next>();
		if (_cur == mark) {
			break;
		}
	}
}

template<class CharSeq>
template<class First, class Next, class ...Rest>
typename std::enable_if<sizeof ...(Rest) != 0>::type
chewer<CharSeq>::consume() {
	for (	;!overshoot(); ) {
		size_t mark = _cur;
		consume<First>();
		consume<Next,Rest...>();
		if (_cur == mark) {
			break;
		}
	}
}

#endif /* EOF*/
