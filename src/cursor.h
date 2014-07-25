#ifndef CURSOR_H
#define CURSOR_H
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

#include <cstddef>

//! \todo Elininate this header.

/*! \file cursor.h
    This file defines class `cursor`.
*/

/*! \brief Encapsulates a means of maintaining and
    modifying an index to some random-access sequence.

    A class that controls such a sequence can contain a cursor to
    provide clients with an interface for tracking position in
    the sequence.

*/
struct cursor {

	//! The default constructor initialises position to 0
	cursor()
		:   _posn(0) {}

	//! Set the cursor to an absolute position
	void to(size_t which) {
		_posn = int(which);
	}

	//! `operator()(which)` is equivalent to `to(which)`
	void operator()(size_t which) {
		to(which);
	}

	//! Cast the cursor to a `int`, the cursor position
	operator int () const {
		return _posn;
	}

	//! Assign an absolute position to the cursor, returning `*this`.
	cursor & operator=(size_t which ) {
		to(which);
		return *this;
	}

	//! Move the cursor by a signed amount
	void move(int amount) {
		_posn += amount;
	}

	//! Move the cursor forward an amount
	cursor & operator+=(size_t amount) {
		move(int(amount));
		return *this;
	}

	//! Move the cursor backward an amount
	cursor & operator-=(size_t amount) {
		move(-int(amount));
		return *this;
	}

	//! Pre-increment the cursor
	cursor & operator++() {
		++_posn;
		return *this;
	}

	//! Post-increment the cursor
	cursor operator++(int) {
		cursor prev(*this);
		++_posn;
		return prev;
	}

	//! Pre-decrement the cursor
	cursor & operator--() {
		--_posn;
		return *this;
	}

	//! Post-decrement the cursor
	cursor operator--(int) {
		cursor prev(*this);
		--_posn;
		return prev;
	}
private:

	//! The cursor's position.
	int _posn;
};

#endif //EOF
