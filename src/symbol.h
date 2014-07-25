#ifndef symbol_H
#define symbol_H
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

#include "formal_parameter_list.h"
#include "evaluation.h"
#include "reference_cache.h"
#include "line_despatch.h"
#include "parameter_substitution.h"
#include <string>
#include <memory>
#include <set>
#include <vector>
#include <map>


/*! \file symbol.h

	This file defines class `symbol`
*/

// Forward decl
struct reference;

//! `class symbol` encapsulates the symbol's state

struct symbol
{
	friend reference;

	//! Symbolic constants denoting the provenance of a symbol.
	enum class provenance {
		//! The symbol is not configured
		unconfigured,
		//! The symbol is globally configured by a commandline option
		global,
		//! The symbol is transiently configured by an in-source directive
		transient
	};

	using symbol_table = std::map<std::string,symbol>;
	using table_entry = symbol_table::value_type;

	struct locator
	{
		//! The default constructor locates the null symbol
		locator();

		//! Construct from a symbol table iterator.
		explicit locator(symbol_table::iterator iter)
		: _loc(iter) {}

		//! Construct a from a name.
		explicit locator(std::string const & id);

		/*! \brief Construct given name and provenance.
			\param  id The symbol identifier.
			\param  source The `provenance` of the symbol.
		*/
		locator(std::string const & id,
			   provenance source)
		: 	_loc(insert(id,source)) {}

		//! Construct given a chewer
		template<class CharSeq>
		explicit locator(chewer<CharSeq> & chew);

		//! Equality operator
		bool operator==(locator other) const {
			return _loc == other._loc;
		}

		//! In equality operator
		bool operator!=(locator & other) const {
			return !operator==(other);
		}

		//! Say whether this locator is null.
		bool null() const;

		//! Cast to boolean = !null()
		operator bool() const {
			return !null();
		}

		///@{
		//! Defeference
		symbol & operator*() {
			return _loc->second;
		}
		symbol const & operator*() const {
			return _loc->second;
		}
		///@}

		///@{
		/// Point
		symbol * operator->() {
			return &_loc->second;
		}
		symbol const * operator->() const {
			return &_loc->second;
		}
		///@}

		//! Get the name of the symbol
		std::string const & id() const {
			return _loc->first;
		}

	private:

		symbol_table::iterator _loc;
	};


	//! Equality operator
	bool operator==(symbol const & other) const {
		return id() == other.id();
	}

	//! Get the name of the symbol.
	std::string const & id() const {
		return _loc.id();
	}

	//! Get the provenance of the symbol
	provenance origin() const {
		return _provenance;
	}

	//! Set the symbol's provenance
	void originate(provenance origin) {
		_provenance = origin;
	}

	/*! \brief Get the source line-number at which this symbol was last defined
	    or undefined.
	*/
	unsigned line() const {
		return _line;
	}

	//! Get a pointer to the symbol's definition; null if undefined
	std::shared_ptr<std::string const> defn() const {
		return _defn;
	}

	//! Get a pointer to the symbol's substitution format; null if none
	std::shared_ptr<parameter_substitution::format const> format() const {
		return _format;
	}

	//! Inequality operator
	bool operator!=(symbol const & other) const {
		return !operator==(other);
	}

	//! Is the symbol defined
	bool defined() const {
		return _defn.get();
	}

	//! Set the definition of the owning symbol.
	void set_definition(std::string const & defn);

	//! Set a macro parameter list in a symbol's `state`.
	void set_parameters(formal_parameter_list const & params) {
		_params = params;
		if (_defn && !_defn->empty()) {
			_format.reset(new parameter_substitution::format(*this));
		} else {
			_format.reset();
		}
	}

	//! Impute `n` parameters of the symbol
	void set_parameters(size_t n) {
		_params = formal_parameter_list(n);
	}

	/*! \brief Define the owning symbol
		\param defn The definition of the symbol
		\param params The parameter list of the symbol

		The symbol is assigned the new definition and parameter list,
		the resulting expansion and evaluation are resolved and cached
		and the symbol is left dirty.
	*/
	void define(std::string const & defn, formal_parameter_list const & params);

	//! Remove any macro parameter list
	void clear_parameters() {
		_params = formal_parameter_list();
	}

	//! Undefine the owning symbol.
	void undef();

	//! Report a reference to this symbol
	void report() const;

	//! Say whether the symbol is configured.
	bool configured() const {
		return _provenance == provenance::global ||
			   _provenance == provenance::transient;
	}

	//! Say whether the symbol is deselected.
	bool deselected() const {
		return _deselected;
	}

	//! Say whether the symbol has been invoked.
	bool invoked() const {
		return _invoked;
	}

	//! Say whether the symbol's definition is infinitely regressive
	bool self_referential() const {
		return _snapshot == int(pseudo_snapshot::infinite);
	}

	/*! \brief Say whether cached references of this symbol
		are out of date, due to configuration changes of
		contributing symbols
	*/
	bool dirty() const {
		return !self_referential() && (!clean() || _snapshot < snapshot_max());
	}

	//! Say whether the symbol's state has been determined.
	bool clean() const {
		return _snapshot > int(pseudo_snapshot::pristine);
	}

	//! Say whether a determination the symbol's state is in progress.
	bool in_progress() const {
		return _snapshot == int(pseudo_snapshot::define_in_progress) ||
			_snapshot == int(pseudo_snapshot::undef_in_progress);
	}

	//! Get the symbol's reference signature as string.
	std::string signature() const {
		return id() + _params.str();
	}

	//! Get the symbol's parameters
	formal_parameter_list const & parameters() const {
		return _params;
	}

	//! Say whether a string is a parameter of the symbol
	size_t which_parameter(std::string const & str) const {
		return _params.which(str);
	}

	//! Say whether this symbol is a variadic macro.
	bool variadic() const {
		return _params.variadic();
	}

	/*! \brief Analyse and handle a `-D` option for this symbol.

	    \param chew On entry, a `chewer` referencing the text offset from which
			to scan. On return receives a `chewer` referencing the first
			offset not consumed. The option is of the form
			`-DSYM[(PARMS)[=VAL]` or `--define SYM[(PARMS)][=VAL]`.
			`chew` shall point just past `SYM`.

	    The option is analysed for well-formedness and for consistency and
	    non-redundancy in the current configuration. Errors are diagnosed.
	    If there are none the global configuration is updated if required.
	 */
	void digest_global_define(chewer<std::string> & chew);

	/*! \brief Analyse and handle an in-source `#define` directive for this
	    symbol.

	    \param   params The macro parameter list of the symbol.
	    \param	definition	The proposed definition of the symbol.
	    \return A `line_type` determined by the analysis, denoting
	    the action to be taken on the directive.

	    The proposed defintion is analysed for consistency and
	    non-redundancy in the current configuration. Errors are diagnosed.
	    If there are none the transient configuration is updated if required.
	 */
	line_type
	digest_transient_define(formal_parameter_list const & params,
	                        std::string const & definition);

	/*! \brief Analyse and handle a `-U` option for this symbol.

	    \param	chew On entry, a `chewer` referencing the text offset from which
			to scan. On return receives a `chewer` referencing the first
			offset not consumed. The option is of the form `-USYM`. `chew` shall
	    point just past `SYM`.

	    The option is analysed for well-formedness and for consistency and
	    non-redundancy in the current configuration. Errors are diagnosed.
	    If there are none the global configuration is updated if required.
	 */
	void digest_global_undef(chewer<std::string> & chew);

	/*! \brief Analyse and handle an in-source `#undef` directive for this
	    symbol.

	    \return A `line_type` denoting the action to be taken with the
	        directive.
	    The directive is analysed for well-formedness and for consistency
	    non-redundancy in the current configuration. Errors that are diagnosed.
	    If there are none the transient configuration is updated if required.
	 */
	line_type digest_transient_undef();

	//! Get the number of symbols with a given provenance.
	static size_t count(provenance source);

	//! Get the number of symbols in the symbol table
	static size_t count() {
		return _sym_tab_.size() - 1;
	}

	/*! \brief Read an identifier from an `chewer`

	    \param chew On entry, a `chewer` referencing the text offset from which
			to scan. On return receives a `chewer` referencing the first
			offset not consumed.

	    \return The parsed identifier.
	*/
	template<class CharSeq>
	static std::string read_id(chewer<CharSeq> & chew);


	/*! \brief Lookup a symbol by name in the symbol table.

	    \param  id    The name of the symbol sought.
	    \return A symbol. If no symbol named `id` is found then
	        the Null symbol is returned.
	*/
	static locator lookup(std::string const & id) {
		symbol_table::iterator result = table().find(id);
		return result == table().end() ?
		       locator() : locator(result);
	}

	/*! \brief Scan for a symbol name from a text pointer.
	    \param  chew On entry, a `chewer` referencing the text offset from which
			to scan. On return receives a `chewer` referencing the first
			offset not consumed.
	*/
	template<class CharSeq>
	static void scan_name(chewer<CharSeq> & chew);

	//IMK Fix xomments.
	/*! \brief Find the first occurrence of a symbol name
		within a terminal segment of a `parse_buffer`

	    \param id The name of the symbol to be searched for.
	    \param chew  On entry, a `chewer` positioned in a
			`parse_buffer` at the start of the segment to search.
			On return is positioned just passed the
			first occurrence found of `id`, or at the end of
			the `parse_buffer`.
		\return The offset in the `parse_buffer`
			of the first occurrence found of `id`, if any, else
			`string::npos`

		The member function does not ensure that a detected
		occurrence of `id` is not a terminal portion of


	*/
	template<class CharSeq>
	static size_t
	find_first_in(std::string const & id, chewer<CharSeq> & chew);

	/*! \brief Search a terminal portion of a `parse_buffer`
		for any identifier.

	    Search a terminal portion of a `parse_buffer` to find the first
		syntactic occurrence of an identifier (parsed greedily)

	    \param  chew  A `chewer` positioned on entry in the
			`parse_buffer` search. On return, is positioned for
			continuing the search beyond the first identifier detected, if any.

		\param off On return, receives the offset in the `parse_buffer`
		of the first identifier detected, if any, else is unchanged.

	    \return The identifier detected, if any, else any empty string.
	*/
	template<class CharSeq>
	static std::string find_id_in(chewer<CharSeq> & chew, size_t & off);

	/*! \brief Search a terminal portion of a `parse_buffer`
		for any known symbol name.

	    Search a terminal portion of a `parse_buffer` to find the first
		syntactic occurrence of the name of any known symbol.

	    \param  chew  A `chewer` positioned on entry in the
			`parse_buffer` search. On return, is positioned for
			continuing the search beyond the first name detected, if any.

		\param off On return, receives the offset in the `parse_buffer`
		of the first name detected, if any, else is unchanged.

	    \return Locator known symbol detected, if any, else the null locator.
	*/
	template<class CharSeq>
	static locator find_any_in(chewer<CharSeq> & chew, size_t & off);

	//! Say whether a character can be the first of a symbol name.
	static bool is_start_char(char ch) {
		return isalpha(ch) || ch == '_';
	}

	//! Say whether a character can occur in symbol name.

	static bool is_valid_char(char ch) {
		return isalnum(ch) || ch == '_';
	}


	//! Set the list of symbol masks for symbol reporting.
	static void set_selection(char const *optarg);

	//! Delete all transient symbols from the symbol table
	static void per_file_init();

	//! Report the global configuration, according to options.
	static void report_global_config();

private:

	//! Pseudo snapshot numbers for symbols in indeterminate states
	enum class pseudo_snapshot {
		//! Symbol has merely be constructed
		pristine = -1,
		//! Symbol is in the process of being defined
		define_in_progress = -2,
		//! Symbol is in the process of being undefined.
		undef_in_progress = -3,
		//! References of the symbol are by definition insoluble.
		infinite = -4

	};

	//! Prime the symbol with a pseudo snapshot
	void set_pseudo_snapshot(pseudo_snapshot n = pseudo_snapshot::pristine) {
		_snapshot = int(n);
	}

	/*! \brief Report a symbol as resolved from the global
		configuration. The method invokes itself recursively
		on all the symbol's contributors and then reports
		the symbol itself.
	*/
	void report_premiere();

	//! Mark the symbol as invoked, or not
	void set_invoked(bool value = true) {
		_invoked = value;
	}

	/*! \brief Record the symbol's definition as referring to another
		another symbol, and recursively as referring to those
		referred to by the other.
	*/
	void subscribe_to(locator other);

	/*! Say whether the symbol's definition refers to another
		another symbol, directly or indirectly.
	*/
	bool subscribes_to(locator other) const;

	//! Acquire all the symbol's contributors
	void subscribe();

	//! Forget all contributions to this symbol by others
	void unsubscribe();

	/*! \brief Assign the symbol state the current sequential snapshot number,
		signifying that it is up-to-date, and increment the current
		snapshot number.
	*/
	void make_clean() {
		_snapshot = _current_snapshot_++;
		if (_provenance == provenance::global) {
			_last_global_snapshot_ = _snapshot;
		}
	}

	/*! \brief Assign the symbol state a pseudo snapshot number,
		signifying that it is out of date, and recursively to
		all its subscribers
	*/
	void make_dirty(pseudo_snapshot n = pseudo_snapshot::pristine);

	/*! \brief Assign the symbol state a pseudo snapshot number,
		signifying that its definition involves and infinite
		regress, and recursively to all its subscribers
	*/
	void make_self_referential() {
		make_dirty(pseudo_snapshot::infinite);
	}

	/*! \brief Diagnose the case in which defining or undefining the symbol
		retrospectively changes the expansion of a previously defined
		symbol.
	*/
	void diagnose_retrospective_redefinition() const;

	/*! \brief Make all `#`-operator replacements post-argument-substitution
		in the symbol's macro expansion.

		\param subst A `parse_buffer` containing the symbol's
		definition with the arguments of the reference substituted for
		parameters.
	*/
	void do_stringification(parse_buffer & subst) const;

	/*! \brief Get the maximum sequential snapshot number in the set of this
		symbol and the recursive closure of its contributors

	*/
	int snapshot_max() const;

	//! Say whether a symbol name matches a selection pattern for reporting.
	static bool selected(std::string const & id);

	/*! \brief Say whether a symbol name is excluded from reporting by the
		`--select` option.
	*/
	static bool deselected(std::string const & id);

	/*! \brief Add a symbol name pattern for reporting.

		\param pattern A symbol name pattern to select symbols for reporting

		If `pattern` terminates with '*' then any symbol that initially
		matches the preceding portion of `pattern` will be reported.

		\return True if the pattern was added, false if it was
			already present.
	*/
	static bool add_pattern(std::string const & pattern)  {
		return _selected_symbols_set_.insert(pattern).second;
	}

	//! Say whether a symbol name matches a *-terminated wildcard prefix
	static bool
	wildcard_match(std::string const & wildcard, std::string const & name);

	//! Get a reference to the symbol table
	static symbol_table & table() {
		return symbol::_sym_tab_;
	}

	/*! \brief Insert the symbol into the symbol table with a specified
	    provenance.
	    \param  id The name of the symbol to insert.
	    \param  source The `provenance` of the symbol.
		\param hint An iterator that is an upper bound hint to the
			insertion position.
	    \return An iterator to the inserted symbol.
	*/
	static symbol_table::iterator
	insert(
		std::string const & id,
		provenance source,
		symbol_table::iterator hint = table().end()) {
		auto where =
			table().insert(hint,table_entry(id,symbol(source)));
		where->second._provenance = source;
		where->second._loc = locator(where);
		where->second._deselected = deselected(id);
		return where;
	}

	/*! \brief Explicitly construct given a `provenance`.
		\param source   The `provenance` of the symbol to construct.
	*/
	symbol(provenance source)
	: 	_provenance(source),
		_line(0),
		_deselected(false),
		_invoked(false),
		_snapshot(int(pseudo_snapshot::pristine)){}



	//! Locator of this symbol in the symbol table.
	locator _loc;
	//! Pointer to the symbol's definition, if any
	std::shared_ptr<std::string> _defn;
	//! List of the symbol's macro arguments, if any
	formal_parameter_list _params;
	//! The provenance of the symbol
	provenance _provenance;
	//! Source line-number where symbol last defined or undefined, or 0.
	unsigned _line;
	//! Is the symbol deselected?
	bool _deselected;
	//! Has the symbol been invoked?
	bool _invoked;
	/*! Pointer to the parameter substitution format of the symbol,
		null if none.
	*/
	std::shared_ptr<parameter_substitution::format> _format;
	/*! Sequential snapshot number of this symbol. Is set = the
		global sequential snapshot counter each time a reference
		of the symbol is resolved.
	*/
	mutable int _snapshot;
	/*! List of unique pointers to states of the symbols that
		appear in the definition of the owning symbol
	*/
	std::vector<symbol::locator> _contributors;
	/*! List of unique pointers to states of the symbols that
		to which this one contributes
	*/
	std::vector<symbol::locator> _subscribers;
	/*! Boolean vector flagging the parameters whose arguments shall not
		be macro expanded because subject to token ops.
	*/
	std::vector<bool> _no_expand_pararms;

	//! The current sequential snapshot number
	static int _current_snapshot_;
	//! The last snapshot number consumed by the global configuration.
	static int _last_global_snapshot_;
	//! The set of symbols selected for reporting, if any
	static std::set<std::string> _selected_symbols_set_;
	//! The symbol table.
	static symbol_table _sym_tab_;
	//! The table entry of the null symbol
	static table_entry _null_;
};

inline symbol::locator::locator()
: _loc(symbol::table().begin()) {}

inline symbol::locator::locator(std::string const & id)
: 	_loc(symbol::table().lower_bound(id)) {
	if (_loc == symbol::table().end() || _loc->first != id) {
		_loc = symbol::insert(id,symbol::provenance::unconfigured,_loc);
	}
}

template<class CharSeq>
symbol::locator::locator(chewer<CharSeq> & chew) {
	std::string id = read_id(chew);
	_loc = symbol::table().lower_bound(id);
	if (_loc == symbol::table().end() || _loc->first != id) {
		_loc = symbol::insert(id,symbol::provenance::unconfigured,_loc);
	}
}

inline bool symbol::locator::null() const {
	return _loc == symbol::table().begin();
}

#endif //EOF
