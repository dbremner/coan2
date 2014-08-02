#ifndef DIAGNOSTIC_H
#define DIAGNOSTIC_H
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

#include "prohibit.h"
#include "integer.h"
#include "chew.h"
#include <sstream>
#include <list>
#include <memory>

/** \file diagnostic.h
 *   This file defines types supporting the production of diagnostics.
*/

/// Enumerated constants representing the severities of diagnostics
enum struct severity {
    //! No severity
    none = 0,
    //! A progress diagnostic
    progress = 1,
    //! An informational diagnostic
    info = 2,
    //! A warning diagnostic
    warning = 4,
    //! An error diagnostic
    error = 8,
    //! A fatal error disgnostic
    abend = 16,
    //! A summary diagnostic
    summary = 32,
    //! A progress summary
    summary_progress = summary | progress,
    //! An informational summary
    summary_info = summary | info,
    //! A warning summary
    summary_warning = summary | warning
};

/*! \brief The tag class is inserted in a `diagnostic_base` to tell it to
    emit itself
*/
struct emit {};

/*! \brief The tag class is inserted in a `diagnostic_base` to tell it to
    defer itself
*/
struct defer {};

//! A base class for diagnostic classes
struct diagnostic_base {

	typedef std::shared_ptr<diagnostic_base> ptr;

	//! Destructor
	virtual ~diagnostic_base() {}

	//! Globally enqueue a copy of this `diagnostic_base` for deferred action.
	void queue() const {
		_queue_.push_back(ptr(clone()));
	}

	//! Get the severity level of the runtime type.
	virtual severity level() const {
		return severity::none;
	}

	/*! \brief Get the unique identifier of the runtime type.

	    Each distinct cause that may be reported by a diagnostic has a
	    distinct identifier.

	    \return The unique identifier of the runtime type.
	*/
	virtual unsigned id() const {
		return 0;
	}

	/*! \brief Get the reason-code of the diagnostic.

	    The reason-code encodes the id of the diagnostic and its
	    severity level.

	    \return The reason-code of \c diagnostic.
	*/
	unsigned encode() const {
		return code(level(),id());
	}

	//! Cast the object to its reason-code.
	operator unsigned () const {
		return encode();
	}

	//! Say whether this diagnostic is suppressed.
	bool gagged() const {
		return _gagged;
	}

	//! Get the text of the diagnostic
	std::string text() const {
		return _text.str();
	}

	//! Cast the object to its textual representation.
	operator std::string const () {
		return text();
	}

	/*! \brief Insert an arbitrary object into this \c diagnostic.
	    \tparam T Type of the object to be inserted.
	    \param  obj The object to be inserted.
	    \return A reference to `*this`.

	    The member function inserts `obj` into the text
	    of the diagnostic.
	*/
	template<typename T>
	diagnostic_base & operator<<(T const & obj) {
		if (!_gagged) {
			_text << obj;
		}
		return *this;
	}

	/*! \brief Queue the diagnostic for deferred action.

	    Inserting a token object of type `defer` to the `diagnostic`
	    adds the diagnostic to the deferred queue.

	    \return A reference to `*this`.
	*/
	diagnostic_base & operator<<(defer) {
		if (!_gagged) {
			queue();
		}
		return *this;
	}

	/*! \brief Emit the diagnostic.

	    Inserting a token object of type `emit` to the `diagnostic`
	    causes it to be emitted.

	    \return A reference to `*this`.
	*/
	diagnostic_base & operator<<(emit) {
		if (!_gagged) {
			despatch();
		}
		return *this;
	}

	//! Count the diagnostics enqueued for deferred action.
	static size_t deferred() {
		return _queue_.size();
	}

	/*! \brief Discard any queued diagnostics that match a
	    reason-code, returning the number discarded.
	    \param  reason The reason-code for selecting
				the queued diagnostics to
				discard.
	    \return The number of discarded diagnostics.
	*/
	static size_t discard(unsigned reason) {
		return volley(reason,&diagnostic_base::encode);
	}

	/*! \brief Discard any queued diagnostics that match a
	    severity level, returning the number discarded.
	    \param  level The severity level for selecting
				the queued diagnostics to discard.
	    \return The number of discarded diagnostics.
	*/
	static size_t discard(severity level) {
		return volley(level,&diagnostic_base::level);
	}

	//! Discard all queued diagnostics.
	static void discard_all() {
		_queue_.resize(0);
	}

	//! Emit all queued diagnostics that match a reason-code
	static size_t flush(unsigned reason) {
		return volley(
					reason,
					&diagnostic_base::encode,
					&diagnostic_base::despatch);
	}

	//! Emit all queued diagnostics that match a severity
	static size_t flush(severity level) {
		return volley(
					level,
					&diagnostic_base::level,
					&diagnostic_base::despatch);
	}

	/*! Emit any queued diagnostics */
	static void flush_all();


	/*! \brief Write summary diagnostics on `cerr` at exit.

	    The summary diagnostics will be output unless `--gag summary`
	    is in force, which it is by default.
	*/
	static void epilogue();

	/*! \brief Convert the internal exit status to an exit code for `exit()`.

	    \return RC such that:

	    - RC = 0:			MSG_CLASS_none: No diagnostics accrued.

	    - RC & 0x2:		MSG_CLASS_info: 	At worst info diagnostics accrued.

	    - RC & 0x4:		MSG_CLASS_warning: At worst warnings accrued.

	    - RC & 0x8:		MSG_CLASS_error:	At worst errors accrued.

	    - RC & 0x16:		MSG_CLASS_abend:	Execution was aborted.

	    - RC & 0x12:		EVENT_summary_DROPPED_LINES (info): Input lines were
	                        dropped on output.

	    - RC & 0x22:	EVENT_summary_CHANGED_LINES (info): Input lines were
	                    changed on  output.

	    - RC & 0x44:	EVENT_summary_errorED_LINES (warning): Lines were
	                    changed to \c hash-errors on output.

	    - RC & 0x84:	EVENT_summary_error_OUPUT (warning): Unconditional
	                    hash-errors were  output.
	*/
	static int exitcode();

protected:

	/*! \brief Constructor.

	    \param severity_name Name of the severity level of the diagnostic
	    \param  level   The severity level of the diagnostic
	    \param  id      The causal identifier of the diagnostic
	    \param  in_code_only True if the diagnostic is applicable only when
	            parsing code.

	*/
	diagnostic_base(std::string severity_name,
	                severity level, unsigned id,
	                bool in_code_only = false);

	//! Copy constructor.
	diagnostic_base(diagnostic_base const & src)
		: _gagged(src._gagged),_text(src._text.str()) {}

	//! Increment global counts appropriately for the runtime type.
	virtual void count() const {}

	//! Clone the runtime object on the heap.
	virtual diagnostic_base * clone() const {
		return new diagnostic_base(*this);
	}

	//! Emit the diagnostic
	void despatch() const throw (unsigned);

	//! Is the diagnostic suppressed?
	bool _gagged;
	//! The text of the diagnostic.
	std::stringstream _text;

	/*! \brief Get the reason-code that encodes a causal identifier and severity
	    level.

	    \param  level   The severity level to be encoded.
	    \param  id  The causal identifier to be encoded.
	    \return The reason-code that encodes a causal identifier and severity
	    level.
	*/
	static unsigned code(severity level, unsigned id) {
		return (int(level) << 8) | id;
	}
	/*! \brief Queue of deferred diagnostics.

	    A diagnostic may have to be constructed before we know whether it
	    should be issued. In the meantime it can be queued.
	*/
	static std::list<ptr> _queue_;

	//! Global count of informational diagnostics.
	static unsigned _infos_;
	//! Global count of warning diagnostics.
	static unsigned _warnings_;
	//! Global count of error diagnostics.
	static unsigned _errors_;
	//! Global count of fatal error diagnostics.
	static unsigned _abends_;
	//! Global count of `#error` directives output.
	static unsigned _error_directives_generated_;
	//! Global count of operative `#error` directives output.
	static unsigned _error_directives_operative_;

	//! No assignment
	no_assign _no_assign;

private:

	/*! \brief Call a member function on all queued diagnostics for which
		a given member function returns a given result.
		\tparam T Type returned by the selector member function.
	    \param  match  The T that shall be returned by the selector function
			to select the diagnostic.
	    \param  action The member method, if any,
			to be called on selected diagnostics, else null.
	    \return The number of diagnostics selected.
	*/
	template<class T>
	static size_t
	volley(
		T match,
		T (diagnostic_base::*selector)() const,
		void (diagnostic_base::*action)() const = nullptr)
	{
		if (match == T(0)) {
			return 0;
		}
		size_t shots = 0;
		std::list<ptr>::iterator qit(_queue_.begin());
		while ( qit != _queue_.end()) {
			if ((qit->get()->*selector)() == match) {
				if (action) {
					(qit->get()->*action)();
				}
				qit = _queue_.erase(qit);
				++shots;
			} else {
				++qit;
			}
		}
		return shots;
	}

};

/*! \brief Class template \c diagnostic<Level,Id>
    encapsulates a type of diagnostic.

    \tparam  Level   The severity level of the diagnostic type.
    \tparam Id The causal identifier of diagnostic type.
*/
template<severity Level, unsigned Id>
struct diagnostic : diagnostic_base {
	//! The severity level of this diagnostic type.
	static const severity _severity_ = Level;
	//! The causal identifier of this diagnostic type.
	static const unsigned _id_ = Id;

	/*! \brief Constructor.

	    Explicitly construct given a severity name.
	    \param  severity_name Severity name of the diagnostic to be
	        constructed.
	*/
	explicit diagnostic(std::string const & severity_name)
		: diagnostic_base(severity_name,Level,Id) {}

	//! Destructor
	virtual ~diagnostic() {};

	//! Get the severity level of this \c diagnostic.
	severity level() const {
		return Level;
	}

	//! Get the causal identifier of this \c diagnostic.
	unsigned id() const {
		return Id;
	}

	//! Clone this `diagnostic` on the heap.
	diagnostic_base * clone() const {
		return new diagnostic(*this);
	}

	//! Get the reason-code of this diagnostic's type
	static unsigned code() {
		return diagnostic_base::code(Level,Id);
	}

	//! Forget this diagnostic.
	static size_t discard() {
		return diagnostic_base::discard(code());
	}

	//! Emit all deferred diagnostics of this type.
	static size_t flush() {
		return diagnostic_base::flush(code());
	}
};

/*! \brief Class `progress_msg` encapsulates a progress diagnostic.
    \tparam Id The causal identifier of `progress_msg type`.
*/
template<unsigned Id>
struct progress_msg : diagnostic<severity::progress,Id> {
	//! Constructor
	progress_msg()
		: diagnostic<severity::progress,Id>("progress") {}

	//! \brief Clone this `progress_msg` on the heap.
	diagnostic_base * clone() const {
		return new progress_msg(*this);
	}
};

/*! \brief Class `info_msg` encapsulates an informational diagnostic.
    \tparam Id The causal identifier of `info_msg` type.
*/
template<unsigned Id>
struct info_msg : diagnostic<severity::info,Id> {
	using diagnostic<severity::info,Id>::_infos_;

	//! Default constructor
	info_msg()
		: diagnostic<severity::info,Id>("info") {}

	//! Clone this `info_msg` on the heap.
	diagnostic_base * clone() const {
		return new info_msg(*this);
	}

private:

	//! Increment the global count of informational diagnostics
	void count() const {
		++_infos_;
	};

};

/*! \brief Class `warning_msg` encapsulates a warning diagnostic.
    \tparam Id The causal identifier of `warning_msg` type.
*/
template<unsigned Id>
struct warning_msg : diagnostic<severity::warning,Id> {
	using diagnostic<severity::warning,Id>::_warnings_;

	//! Default constructor
	warning_msg()
		: diagnostic<severity::warning,Id>("warning") {}
	~warning_msg() {}

	//! Clone this `warning_msg` on the heap.
	diagnostic_base * clone() const {
		return new warning_msg(*this);
	}
private:
	//! Increment the global count of warning diagnostics
	virtual void count() const {
		++_warnings_;
	};

};

/*! \brief Class `error_msg` encapsulates a error diagnostic.
    \tparam Id The causal identifier of `error_msg` type.
*/
template<unsigned Id>
struct error_msg : diagnostic<severity::error,Id> {
	using diagnostic<severity::error,Id>::_errors_;

	//! Default constructor
	error_msg()
		: diagnostic<severity::error,Id>("error") {}

	//! Clone this `error_msg` on the heap.
	diagnostic_base * clone() const {
		return new error_msg(*this);
	}
private:
	//! Increment the global count of error diagnostics
	void count() const {
		++_errors_;
	};

};

/*! \brief Class `abend_msg` encapsulates a fatal error diagnostic.

    \tparam Id The causal identifier of `abend_msg` type.
*/
template<unsigned Id>
struct abend_msg : diagnostic<severity::abend,Id> {
	using diagnostic<severity::abend,Id>::_abends_;

	//! Default constructor
	abend_msg()
		: diagnostic<severity::abend,Id>("abend") {}

	//! Clone this `abend_msg` on the heap.
	diagnostic_base * clone() const {
		return new abend_msg(*this);
	}
private:
	//! Increment the global count of abend diagnostics
	void count() const {
		++_abends_;
	};

};

/*! \brief Class `progress_summary_msg` encapsulates a progress summary
    diagnostic.

    \tparam Id The causal identifier of `progress_summary_msg` type.
*/
template<unsigned Id>
struct progress_summary_msg :
		diagnostic<severity::summary_progress,Id> {
	//! Default constructor
	progress_summary_msg()
		: diagnostic<severity::summary_progress,Id>("progress") {}
};

/*! \brief Class `info_summary_msg` encapsulates an informational summary
    diagnostic.

    \tparam Id The causal identifier of `info_summary_msg` type.
*/
template<unsigned Id>
struct info_summary_msg : diagnostic<severity::summary_info,Id> {
	//! Default constructor
	info_summary_msg()
		: diagnostic<severity::summary_info,Id>("info") {}
};

/*! \brief Class `warning_summary_msg` encapsulates a warning summary
    diagnostic.

    \tparam Id The causal identifier of `warning_summary_msg` type.
*/
template<unsigned Id>
struct warning_summary_msg :
		diagnostic<severity::summary_warning,Id> {
	//! Default constructor
	warning_summary_msg()
		: diagnostic<severity::summary_warning,Id>("warning") {}
};

//! Report file being processed.
typedef progress_msg<1> progress_processing_file;
//! Peport building the input tree.
typedef progress_msg<2> progress_building_tree;
//! Report added a file to input.
typedef progress_msg<3> progress_added_file;
//! Report total input files found.
typedef progress_msg<4> progress_file_tracker;
//! Report a commandline argument parsed.
typedef progress_msg<5> progress_got_options;

//! Report a duplicate diagnostic selection option
typedef info_msg<1> info_duplicate_mask;
//! Report that input file or directory is symbolic link.
typedef info_msg<2> info_symlink;
/*! \brief Report a `#define` or `#undef` that retrospectively affects
	the meaning of another symbol.
*/
typedef info_msg<3> info_retrospective_redefinition;

/*! \brief Report that same argument occurs for multiple `--define` or
	`--undefine` options
*/
typedef warning_msg<1> warning_duplicate_args;

/*! \brief Report that an input `#define` or `#undef` directive was deleted.

    Report that an input `#define` or `#undef` directive was deleted on
    output because it contradicts a `--define` or `--undefine`
	option together with `--contradict delete`
*/
typedef warning_msg<2> warning_deleted_contradiction;
/*!
    \brief Report that an input `#define` or `#undef` directive was
    commented out.

    Report that an input `#define` or `#undef` directive was commented out
    on output because it contradicts a `--define` or `--undefine`
	option togther with `--contradict comment`
*/
typedef warning_msg<3> warning_commented_contradiction;
/*!

    \brief Report that an input `#define` or `#undef` directive was
    converted to an `#error`.

    Report that an input `#define` or `#undef` directive was converted to a
	`#error` on output because it contradicts a `--define` or `--undefine`
	option together with `--contradict error`
*/
typedef warning_msg<4> warning_errored_contradiction;
/*! \brief Report that an in-source `#define` defines a symbol differently
	from a prior one.
*/
typedef warning_msg<5> warning_differing_redef;

/*! \brief Report that an in-source `#undef` undefines a symbol previously
	defined by an in-source `#define`.
*/
typedef warning_msg<6> warning_undefing_defined;

/*! \brief Encapsulates a diagnostic for `#error` directive input
    unconditionally.

    Class \c warning_unconditional_error_input encapsulates a
    diagnostic to report that an `#error` directive was input unconditionally,
    i.e. not in the scope of `#if`
*/
struct warning_unconditional_error_input : warning_msg<7> {
private:
	//! Increment global counts appropriately.
	void count() const {
		++_warnings_;
		++_error_directives_operative_;
	}
};
/*! \brief Encapsulates a diagnostic for `#error` directive output
        conditionally.

    Class \c warning_error_generated_input encapsulates a
    diagnostic to report that an `#error` directive was output conditionally,
    i.e. within the scope of an `#if`
*/
struct warning_error_generated : warning_msg<8> {
private:
	//! Increment global counts appropriately.
	void count() const {
		++_warnings_;
		++_error_directives_generated_;
	}
};
/*! \brief Encapsulates a diagnostic for `#error` directive output
        unconditionally.

    Class \c warning_unconditional_error_output encapsulates a
    diagnostic to report that an `#error` directive was output
    unconditionally, i.e. not in the scope of any `#if`
*/
struct warning_unconditional_error_output : warning_msg<9> {
private:
	//! Increment global counts appropriately.
	void count() const {
		++_warnings_;
		++_error_directives_operative_;
	}
};
//! Report garbage text was input following a directive
typedef warning_msg<10> warning_garbage_after_directive;
//! Report a newline is missing at end of input*/
typedef warning_msg<11> warning_missing_eof_newline;
//! Report a symbol has a circular definition.
typedef warning_msg<12> warning_infinite_regress;
//! Report the `--verbose` option is mixed with the `--gag` option
typedef warning_msg<13> warning_verbose_only;
//! Report a divide by zero was found in an expression
typedef warning_msg<14> warning_zero_divide;
/*! \brief Report directory name ignored on input when `--recurse` not
	not specified
*/
typedef warning_msg<15> warning_dir_ignored;
//! Report an unknown preprocessor directive
typedef warning_msg<16> warning_unknown_directive;
//! Report a problematic argument to an \c \#include directive
typedef warning_msg<17> warning_invalid_include;
//! Report that an integer constant evaluates > \c INT_MAX
typedef warning_msg<18> warning_int_overflow;
//! Report missing terminator quotation
typedef warning_msg<19> warning_missing_terminator;
//! Report negative shift count
typedef warning_msg<20> warning_negative_shift;
//! Report a huge integer constant forced to be unsigned
typedef warning_msg<21> warning_forced_unsigned;
//! Report integer sign changed by promotion
typedef warning_msg<22> warning_sign_changed;
//! Report a that shift count is >= the width of the shifted quantity
typedef warning_msg<23> warning_shift_overflow;
//! Report a character constant too long for current locale
typedef warning_msg<24> warning_char_constant_too_long;
//! Report that character constant goes multi-byte
typedef warning_msg<25> warning_mulitbyte_char_constant;
//! Apologize that variadic macro expansion is unsupported.
typedef warning_msg<26> warning_variadic_macros_unsupported;
/*! Report that a symbol has been transiently defined or undefined for the
    duration of the current source file
*/
typedef warning_msg<27> warning_transient_symbol_added;
//! Report that the commandline does not specify any `--define` or `--undef`
typedef warning_msg<28> warning_no_syms;
//! Report that input file is a broken symbolic link
typedef warning_msg<29> warning_broken_symlink;
//! Report that the unsafe `--no-transients` option is used.
typedef warning_msg<30> warning_no_transients_used;
//! Report macro ref on unconfigured symbol
typedef warning_msg<31> warning_calling_unconfigured;
//! Report a directive that lacks a required argument
typedef warning_msg<32> warning_no_argument;
//! Report a `#line` directive with argument not a positive integer.
typedef warning_msg<33> warning_not_a_line_number;
//! Report inconsistent argument lists for unconfigured symbol references.
typedef warning_msg<34> warning_inconsistent_calls;
//! Report a macro reference not fully expanded.
typedef warning_msg<35> warning_incomplete_expansion;

//! Report an orphan `#elif` was found in input
typedef error_msg<1> error_orphan_elif;
//! Report an orphan `#else` was found in input
typedef error_msg<2> error_orphan_else;
//! Report an orphan `#endif` was found in input
typedef error_msg<3> error_orphan_endif;
//! Report unexpected end of input
typedef error_msg<4> error_eof_too_soon;
//! Report that the commandline does not specify anything to do
typedef error_msg<6> error_nothing_to_do;
/*! Report that the commandline invalidly specifies multiple input files without
	the `--replace` option
*/
typedef error_msg<7> error_one_file_only;
//! Report that the commandline options are not a valid combination
typedef error_msg<8> error_invalid_args;
//! Report that the commandline is syntactically invalid
typedef error_msg<9> error_usage;
//! Report that `#if` nesting exceeds `maxdepth` in input
typedef error_msg<10> error_too_deep;
//! Report that the `--file` option occurs more than once
typedef error_msg<11> error_multiple_argfiles;
/*! Report that the argument to a `--define` or `--undefine` option
	contains mysterious characters.
*/
typedef error_msg<12> error_garbage_arg;
//! Report that a valid preprocessor identifier was not found where required
typedef error_msg<13> error_not_identifier;
//! Report unbalanced parenthesis
typedef error_msg<14> error_unbalanced_paren;
//! Report `#if` or `#elif` has no argument
typedef error_msg<15> error_if_without_cond;
//! Report failure from `realpath()`
typedef error_msg<16> error_cant_get_realpath;
//! Report a malformed macro parameter list
typedef error_msg<17> error_malformed_macro;
//! Report wrong number of macro arguments for symbol
typedef error_msg<18> error_mismatched_macro_args;
//! Report attempting macro-ref on undefined symbol
typedef error_msg<19> error_macro_call_on_undefined;
//! Report an incomplete ternary conditional operator
typedef error_msg<20> error_ternary_cond_incomplete;
//! Report an ill-formed expression
typedef error_msg<21> error_ill_formed_expression;
/*! \brief Report a symbol that evaluates to an empty string is an
	operand in an expression
*/
typedef error_msg<22> error_empty_symbol;
//! Report an infinite regress in the global configuration
typedef error_msg<23> error_infinite_regress;
//! Report a `##` operator at start or end of definition.
typedef error_msg<24> error_misplaced_token_paste;
//! Report a `#` operator not preceding a parameter for function-like macro
typedef error_msg<25> error_stringify_non_param;
//! Report a non-expression in subexpression context
typedef error_msg<26> error_non_term;
//! Report that token-pasting does not yield a token
typedef error_msg<27> error_bad_token_paste;


//! Report cannot open an output file
typedef abend_msg<1> abend_cant_open_output;
//! Report cannot open an input file
typedef abend_msg<2> abend_cant_open_input;
/*! \brief Report end of input encountered while reading a quoted filename.
	a closing quotation was not found
*/
typedef abend_msg<3> abend_eof_in_filename;
//! Report an internal logic abend
typedef abend_msg<4> abend_confused;
//! Report read error on input
typedef abend_msg<5> abend_cant_read_input;
//! Report write error on output
typedef abend_msg<6> abend_cant_write_file;
//! Report can't identify file or directory
typedef abend_msg<7> abend_no_file;
//! Report invalid filename input
typedef abend_msg<8> abend_illegal_filename;
//! Report failure to delete a file
typedef abend_msg<9> abend_cant_delete_file;
//! Report failure to rename a file
typedef abend_msg<10> abend_cant_rename_file;
//! Report cannot create a temporary file
typedef abend_msg<11> abend_no_tempfile;
//! Report cannot open directory
typedef abend_msg<12> abend_cant_open_dir;
//! Report read error on directory
typedef abend_msg<13> abend_cant_read_dir;
/*! \brief Report that a spin directory includes, is included by or is same as
    an input directory
*/
typedef abend_msg<14> abend_invalid_spin_dir;
//! Report can't get the current working directory
typedef abend_msg<15> abend_cant_get_cwd;
//! Report can't create directory
typedef abend_msg<23> abend_cant_create_dir;


//! Report processing complete
typedef progress_summary_msg<1> progress_summary_all_done;
//! Report total files reached
typedef info_summary_msg<1> info_summary_files_reached;
//! Report total files abandoned due to errors
typedef info_summary_msg<2> info_summary_files_dropped;
//! Report that input lines were dropped
typedef info_summary_msg<3> info_summary_summary_dropped_lines;
//! Report that input lines were changed
typedef info_summary_msg<4> info_summary_summary_changed_lines;
//! Report that input lines were converted to `#errors`
typedef warning_summary_msg<1> warning_summary_summary_errored_lines;
//! Report that unconditional `#error` lines were output
typedef warning_summary_msg<2> warning_summary_summary_error_output;

#endif // EOF
