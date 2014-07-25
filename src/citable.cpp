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
 *   Neither the name of Mike Kinghan nor the names of its                 *
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

#include "citable.h"
#include "options.h"
#include <sstream>
#include <cassert>

/*! \file citable.h
	This file impplements the overloads of free function `citable`
*/

using namespace std;

template<class CharSeq>
string citable(chewer<CharSeq> & chew, size_t len)
{
    static_assert(traits::is_random_access_char_sequence<CharSeq>::value,">:[");
	string citable;
	bool escaped = false;
	size_t ndx = 0;
	char const space = ' ';
	char last_ch = 0;
	if (len == string::npos) {
		len = chew.remaining();
	}
	chew(greyspace);
	for (   ; ndx < len; ++ndx, ++chew) {
		if (!last_ch && isspace(*chew)) {
			continue;
		}
		switch(*chew) {
		case '\\':
			if (!escaped) {
				if (ndx + 2 < len &&
				    chew.atoff(1) == '\r' &&
				    chew.atoff(2) == '\n') {
					last_ch = *chew;
					ndx += 2;
					chew += 2;
				} else if (ndx + 1 < len && chew.atoff(1) == '\n') {
					last_ch = *chew;
					++ndx;
					++chew;

				} else {
					citable.append(1,*chew);
					last_ch = *chew;
					escaped = true;
				}
				continue;
			}
			break;
		case '\r':
			if (ndx + 1 < len &&
			    chew.atoff(1) == '\n') {
				++ndx;
				++chew;
			}
			if (last_ch != space) {
				citable.append(1,space);
				last_ch = space;
			}
			break;
		case '\n':
		case '\t':
		case space:
			if (last_ch != space) {
				citable.append(1,space);
				last_ch = space;
			}
			break;
		default:
			if (isprint(*chew)) {
				citable.append(1,*chew);
				last_ch = *chew;
			}
		}
		escaped = false;
	}
	ndx = citable.length();
	if (ndx) {
		// Trim trailing space
		while (ndx-- > 0 && isspace(citable[ndx])) {}
		citable.resize(ndx + 1);
	}
	return citable;
}

string citable(integer const & integ)
{
	stringstream numeral;
	switch(integ.type()) {
	case INT_INT:
		numeral << (int)integ.raw();
		break;
	case INT_UINT:
		numeral << (unsigned)integ.raw();
		break;
	case INT_LONG:
		numeral << (long)integ.raw();
		break;
	case INT_ULONG:
		numeral << (unsigned long)integ.raw();
		break;
	case INT_LLONG:
		numeral << (long long)integ.raw();
		break;
	case INT_ULLONG:
		numeral << (unsigned long long)integ.raw();
		break;
	default:
		assert(false);
	}
	return numeral.str();
}

string citable(parse_buffer & pb, size_t start, size_t len) {
	chewer<parse_buffer> chew(!options::plaintext(),pb,start);
	return citable(chew,len);
}

// EOF


