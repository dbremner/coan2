#ifndef PARSED_LINE_H
#define PARSED_LINE_H
/***************************************************************************
 *   Copyright (C) 2013 Mike Kinghan, imk@burroingroingjoing.com           *
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

/*! \file abstract_parsed_line.h
	This file defines \c struct \c parsed_line
*/
#include "parse_buffer.h"
#include "directive_type.h"
#include "options.h"


/*! \brief \c struct \c parsed_line is the coan parser's
	base representation of a parsed line of input read from a file.
*/

struct parsed_line : parse_buffer
{
	//! Type of base class.
	using base_type = parse_buffer;

	//! Construct given pointers to input and output streams.
	explicit parsed_line(std::istream * in, std::ostream * out);

	~parsed_line() override {}

	/*! \brief Get a reference to the input stream from which this `parsed_line`
		reads.
	*/
	std::istream * file() {
		return _in;
	}

	//! Get the greatest source line number spanned by this line.
	unsigned num() const {
		return _lineno;
	}

	//! Get the number of linefeeds embedded in this line
	unsigned extensions() const {
		return _extensions;
	}

	//! \brief Record the offset and length of a directive keyword in the line
	void mark_keyword(size_t off, size_t len) {
		_keyword_posn = off;
		_keyword_len = len;
	}

	/*! \brief Try to read a line of input.
	    \return \e true iff a line is read.
	*/
	bool get();

	//! Replace the line with another string.
	void replace(std::string const & replacement) {
		_text = replacement;
	}

	/*! \brief Replace the directive in the line

		\tparam DirectiveType The type of directive that is to
		replace the existing one.

	    The member function edits the line to subsitute a directive of
		type DirectiveType for the existing directive in the line
		to rectify the \c #if-logic of the file in the light of
		lines that have been dropped.

		If DirectiveType denotes a type of directive that
		has no argument then the existing directive keyword is
		replaced the keyword corresponding to DirectiveType
		and the line is then terminated with a linefeed.

		Otherwise the existing directive keyord is simply
		replaced the keyword corresponding to DirectiveType.
	*/
	template<directive_type DirectiveType>
	void keyword_edit();

	//! Classifiy the line as simplified or not
	void set_simplified(bool value = true) {
		_simplified = value;
	}

	//! Say whether the line has been simplified.
	bool is_simplified() const {
		return _simplified;
	}

	//! Is the line reportable for the operative command
	bool reportable() {
		return _reportable;
	}

	//! Set the directive type of the line
	void set_directive_type(directive_type dtype) {
		_dtype = dtype;
		set_reportable();
	}

	//! Get Set the directive type of the line
	directive_type get_directive_type() const {
		return _dtype;
	}

	//! Record whether we are dropping the line.
	void set_dropping();

	//! Are we dropping the line?
	bool dropping() const {
		return _dropping;
	}

	//! Output the line
	void output();

	//! Drop the line
	void drop();

	//! Get a reference to the line's indentation amount.
	unsigned & indent() {
		return _indent;
	}

protected:

	size_t extension_pending(size_t off) const override {
		if (at(off) == '\\') {
			auto advance = eol(++off);
			if (advance && overshoot(advance + off)) {
				return ++advance;
			}
		}
		return 0;
	}

	size_t extend(size_t skip) override;

	/*! Try to read another line of input.
	    \return the number of bytes read.
	*/
	size_t extend() override;

	/*! \brief Convert the directive in the line into a
		another one that has no argument.

		\param keyword. The keyword of the replacement directive.

		The existing directive keyword in the line, if any,
		is replaced the \c keyword and the line is then terminated
		with a linefeed.
	*/
	void keyword_lop(std::string const & keyword);

	/*! \brief Replace the directive keyword in the line with another
		one.

		\param keyword. The keyword of the replacement directive.
	*/
	void keyword_swap(std::string const & directive);

	void write();
	void write_commented_out();
	void write_fast();
	void write_slow();
	void write(bool keep);

	/*! \brief Record whether the line is reportable for the operative
		command
	*/
	void set_reportable();

	//! The number of linefeeds embedded in the line
	unsigned _extensions;
	//! The greatest source line number spanned by this line
	unsigned _lineno;
	//! The input stream from which this line is read
	std::istream * _in;
	//! The output stream to which this line is written
	std::ostream * _out;
	//! Offset to directive keyword, if any.
	size_t	_keyword_posn;
	//! Length of directive keyword, if any
	size_t _keyword_len;
	//! The directive type of this line.
	directive_type _dtype;
	//! Is this line reportable?
	bool _reportable;
	//! Are we dropping this line
	bool _dropping;
	//! Has the line been simplified?
	bool _simplified;
	//! Count of contiguous lines that are dropped together.
	unsigned _drop_run_length = 0;
	//! Amount by which the line is indented
	unsigned _indent;

};


#endif //EOF
