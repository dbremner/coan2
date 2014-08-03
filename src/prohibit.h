#ifndef PROHIBIT_H
#define PROHIBIT_H
#pragma once
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

#include "platform.h"

/*! \file prohibit.h
	This file defines classes:
	- no_copy_init
	- no_assign
	- no_copy
*/

//! A utility class to prevent default construction of containing class
struct no_default_ctor
{
	no_default_ctor() = delete;
	template<typename T>
	explicit no_default_ctor(T&&){}
};

//! A utility class to prevent copy construction of containing class
struct no_copy_init
{
	no_copy_init() = default;
	no_copy_init(no_copy_init const &) = delete;
	no_copy_init(no_copy_init &&) = delete;
};

//! A utility class to prevent assignment of containing class
struct no_assign
{
	no_assign() = default;
	no_assign(no_assign const &) = default;
	no_assign(no_assign &&) = default;
	no_assign & operator=(no_assign const &) = delete;
	no_assign & operator=(no_assign &&) = delete;
};

//! A utility class to prevent copying of containing class
struct no_copy
{
	no_copy() = default;
	no_copy_init _no_copy_init;
	no_assign _no_assign;
};

#endif //EOF
