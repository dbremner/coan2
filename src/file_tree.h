#ifndef FILE_TREE_H
#define FILE_TREE_H
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
#include "prohibit.h"
#include "path.h"
#include "directory.h"
#include "diagnostic.h"
#include "syserr.h"
#include <memory>
#include <map>
#include <cassert>

/*! \file file_tree.h
    This file defines class `file_tree`.
*/

/*! \brief Encapsulates a set of directory-and-file trees.

    Class `file_tree` encapsulates a set of directory-and-file trees,
    notionally united at a root node that does not represent any
    file-system object but just affords entry to the set.
*/
struct file_tree {
	struct traverser;

	/*! \brief Type of a node in a `file_tree`.

	    Class `node` is the internal container type that implements
	    `file_tree`. A `node` consists of a pointer to its parent
	    node and a pointer to a map containing its children, keyed
	    by filename.
	*/
	struct node {
		//! Type of a pointer to a `node`.
		typedef std::shared_ptr<node> node_ptr;
		//! Type of sequence of children of a `node`.
		typedef std::map<std::string,node_ptr> child_list;
		//! Type of an element in a `child_list`.
		typedef child_list::value_type entry;
		//! Type of a pointer to a `child_list`
		typedef std::shared_ptr<child_list> child_list_ptr;

		friend struct file_tree;

		//! Destructor
		~node() {}

		//! Say whether the `node` represents a file
		bool is_file() const {
			return _children.get() == nullptr;
		}

		//! Say whether the `node` represents a directory
		bool is_dir() const {
			return !is_file();
		}

		/*! \brief Traverse the `node` recursively, performing an action at
		    each node encountered.

		    \param action The action to be applied recursively to nodes.
		*/
		void traverse(traverser & action) const;

		//! Get a pointer to the root node of the `node`.
		node * root();

		/*! \brief Recursively insert files within a path into the `node`.

		    Recursively insert files within a path into the `node`,
		    selecting eligible files by a filter.

		    \param  abs_path    The absolute path within which files
		        are to be added to the node.
		    \param  filter  The filter for selecting eleigible files.
		    \return The number of files inserted.
		*/
		template<typename Filter>
		unsigned insert(path_t & abs_path, Filter & filter) {
			return intermediate_insert(abs_path,filter);
		}
		
		//! No copying
		no_copy _no_copy;

	private:
	
		//! Private default constructor
		explicit node(node * parent = nullptr)
			: _parent(parent) {}

		//! Privately construct a node with a given `child_list`
		explicit node(child_list_ptr children)
		:
		_parent(nullptr),_children(children) {}

		/*! \brief Test whether the parent of this `node` contains a given key.

		    \param  key The key to be sought.
		    \return A pointer to the parent of this `node` if it exists
		        and has a child with key `key`; otherwise `nullptr`.
		*/
		node * guardian(std::string const & key) const {
			return _parent && _parent->find(key) ? _parent : nullptr;
		}

		//! Get a pointer to the parent of this `node`, which may be `nullptr`
		node * parent() const {
			return _parent;
		}

		/*! \brief Test whether this `node` contains a given key.
		    \param key  The key to be sought.
		    \return A pointer to the child of this `node` that has key `key`,
		        else `nullptr`.
		*/
		node * find(std::string const & key) {
			node * hit = nullptr;
			if (_children) {
				child_list::iterator where = _children->find(key);
				if (where != _children->end()) {
					hit = where->second.get();
				}
			}
			return hit;
		}

		/*! \brief Ancestor probe for symbolic links.

		    Find the nearest ancestor of the node, if any, that is:-
			- an unconfirmed candidate for inclusion in the `file_tree`
			- is keyed by a path that is an initial subpath of the path
			that keys `this` and also of the real path to which the
			path that keys `this` is resolved.

			\param 	cur_path The path that keys `this`.
			\param	real_path	The real path to which `cur_path` resolves.

			\return Pointer to the nearest ancestor of `*this`
			that satisfies the two conditions, if any, else nullptr.

			This conceptually complicated method is called only
			when the path that keys `*this` refers to a symbolic link.
			In this case the obvious course is just to take the real path
			to which the symbolic link resolves, insert it "from scratch" at
			the root of the file tree and carry on with the current traversal.
			But this may be a mistake.

			Since all top-level input paths are resolved to real paths, a
			symbolic link will only be encountered while we are recursively
			exploring some directory to determine whether any files are selected
			beneath it, and therefore whether the candidate node that represents
			it should actually be inserted in the `file_tree`. While we are
			doing this, and when we encounter the symbolic link, that candidate
			node has yet to be inserted. Hence, if the real path to the symbolic
			link extends the path that keys our candidate node, the path
			elements that key the nodes from the candidate downward will not
			be already present in the tree and all eligible nodes beneath
			the real path will be inserted with their keys. But some initial
			sequence of the same keys have already been confirmed not already
			present in the descent that lead us to the symbolic link in the
			first place. So in handling the symbolic link, we will prematurely
			generate a sub-tree that is identical with one we are in the
			process of generating, and which is to be inserted in the same
			place in the `file_tree`, if at all.

			This could be an arbitrarily great waste of time, even though the
			implementation of the `file_tree` inherantly prevents duplicate
			 entries being created by duplicate insertions. In fact it
			could be an infinite waste of time: if the symbolic link is
			 "self-including" - i.e. refers to one of its own ancestral
			directories - then the simple "start from scratch" approach will
			loop forever. To avoid these hazards, when we encounter a symbolic
			link, we wish to know whether the real path it resolves to either
			is or extends any path that we are already recursively traversing to
			decide upon the insertion of some ancestral node. Only if that is
			*not* the case need we bother to explore the symbolic link. This
			method gives us the answer.
		 */
		node * ancestral_candidate_for_real_path(path_t const & cur_path,
		        path_t const & real_path);

		/*! \brief Recursively insert files within a path into the `node`.

		    Recursively insert files within a path into the `node`,
		    selecting eligible files by a filter.

		    \param  abs_path    The absolute path within which files
		        are to be added to the node.
		    \param  filter  The filter for selecting eleigible files.

		    This function implements the public member `insert`. It calls
		    itself recursively for as long as successive elements of `abs_path`
		    are already represented in the `node` and finally calls
		    `insert_terminal` to insert files from the terminal remainder of
		    `abs_path`.

		    \return The number of files inserted.
		*/
		template<typename Filter>
		unsigned intermediate_insert(path_t & abs_path, Filter & filter) {
			unsigned new_files = 0;
			std::string key = abs_path.cur_element();
			node * found = find(key);
			if (!found) {
				node_ptr candidate(new node(this));
				abs_path.posn() += (abs_path.posn() < int(abs_path.elements()));
				unsigned more_files =
				    candidate->terminal_insert(abs_path,filter);
				if (more_files) {
					insert(key,candidate);
					new_files += more_files;
				}
			} else if (++abs_path.posn() < int(abs_path.elements())) {
				new_files += found->intermediate_insert(abs_path,filter);
			}
			return new_files;
		}

		/*! \brief Recursively insert files within a path into the `node`.

		    Recursively insert files within a terminal segment of a path into
		    the `node`, selecting eligible files by a filter.

		    \param  abs_path    The absolute path within which files
		        are to be added to the node.
		    \param  filter  The filter for selecting eleigible files.

		    `abs_path` is assumed to be positioned at the first element, if
		        any, from which files have not already been inserted to
		        the `node`.

		    This function is called by `insert_intermediate` when that
		    function has exhausted the elements of the path that are
		    already represented in the `node`.

		    \return The number of files inserted.

		*/
		template<typename Filter>
		unsigned terminal_insert(path_t & abs_path, Filter & filter) {
			unsigned new_files = 0;
			if (abs_path.posn() < int(abs_path.elements())) {
				std::string key = abs_path.cur_element();
				node_ptr candidate(new node(this));
				++abs_path.posn();
				unsigned more_files =
				    candidate->terminal_insert(abs_path,filter);
				if (more_files) {
					new_files += more_files;
					insert(key,candidate);
				}
			} else {
				fs::obj_type_t obj_type = fs::obj_type(abs_path.str());
				if (fs::is_slink((obj_type))) {
					path_t real_path(fs::real_path(abs_path.str()));
					if (!ancestral_candidate_for_real_path(abs_path,real_path)) {
						root()->insert(real_path,filter);
					}
				} else if (fs::is_file(obj_type)) {
					new_files += filter(abs_path.str());
				} else if (fs::is_dir(obj_type)) {
					directory dir(abs_path.str());
					for (std::string entry;
					     dir && (!(entry = dir.next()).empty()); ) {
						abs_path.push_back(entry);
						new_files += terminal_insert(abs_path,filter);
						abs_path.pop_back();
					}
					if (!dir) {
						if (!dir.open()) {
							abend_cant_open_dir() <<
								  "Can't open directory \"" << abs_path.str() <<
								  "\" for reading: " <<
								  system_error_message(dir.last_error())
								  << emit();
						} else {
							abend_cant_read_dir() <<
							  "Read error on directory \"" << abs_path.str() <<
							  "\": " <<
							  system_error_message(dir.last_error()) << emit();
						}
					}
				} else {
					assert(false);
				}
			}
			return new_files;
		}

		/*! \brief Insert a child to this `node` with a given key.

		    \param  key The key of the child node to be inserted
		    \param  child The child node to be inserted.
		*/
		void insert(std::string const & key, node_ptr & child);

#ifdef FILETREE_DEBUG
		static void display(std::string const & name,
		                    node const * n, unsigned indent = 0);
#endif
		//! Pointer to the parent `node`, or `nullptr`
		node *_parent;
		//! Pointer to the immediate children of the `node`, or `nullptr`
		std::shared_ptr<child_list> _children;
	};

public:

	//! Type of a sequence of sibling nodes in a `file_tree`
	typedef node::child_list child_list;
	//! Type of a pointer to a `node`
	typedef node::node_ptr node_ptr;
	//! Type of an element in a `child_list`.
	typedef node::entry entry;

	/*! \brief A base for classes employed to traverse a `file_tree`.

	    A `traverser` encapsulates the actions to be taken at the
	    junctures of a `file_tree` traversal:-
	    - At entering directory
	    - At a file
	    - At leaving a directory.
	*/
	struct traverser {
		//! Default constructor
		traverser()
			: _cur_dir(nullptr) {}

		//! Destructor
		virtual ~traverser() {}

		/*! \brief Apply the `traverser` function-wise to an element of a
		    `file_tree`.
		    \param  entry   The element to which the traverser shall be
		        applied.
		*/
		void operator()(entry const & entry);

		/*! \brief Do something on entering a directory.
		    \param  dirname The absolute name of the directory.
		*/
		virtual void enter_dir(std::string const & dirname) {};
		/*! \brief Do something on reaching a file.
		    \param  filename The absolute name of the file.
		*/
		virtual void at_file(std::string const & filename) {};
		/*! \brief Do something on leaving a directory.
		    \param  dirname The absolute name of the directory.
		*/
		virtual void leave_dir(std::string const & dirname) {};

	protected:
	
		//! No copying
		no_copy _no_copy;
		/*! \brief Pointer the node representing the latest directory that
		    traversal has reached.
		*/
		node const * _cur_dir;
		//! The absolute path of the object that traversal has reached.
		path_t _cur_path;
	};

	//! Type representing the null filter for selecting files.
	struct no_filter {
		//! The null filter returns true for every filename.
		bool operator ()(std::string const &) const {
			return true;
		}
	};

	//! Default constructor
	file_tree()
		: _root(node::child_list_ptr(new child_list)),_files(0) {}

	~file_tree() {}

	//! Get the number of files in the `file_tree`
	unsigned files() const {
		return _files;
	}

	/*! \brief Traverse the `file_tree`.
	    \param action A `traverser` to be applied to each node in the
	    `file_tree`.
	*/
	void traverse(traverser & action) {
		_root.traverse(action);
	}

#if CXX11_HAVE_FUNC_DEFAULT_TEMPLATE_ARGS
	/*! \brief Add files from a path to the `file_tree`.
	    \param  path    The path from files are to be added.
	    \param  filter An optional filter for selecting the files to be
	        added.

	    Files within `path` that satisfy `filter` are recursively added to
	    the `file_tree`. `filter` defaults to `no_filter`, which is satisfied
	    by any file.
	*/
	template<typename Filter = file_tree::no_filter>
#else
	template<typename Filter>
#endif
	void add(std::string const & path, Filter & filter) {
		path_t abs_path(fs::real_path(path));
		_root.insert(abs_path,filter);
#ifdef FILETREE_DEBUG
		node::display("ROOT",&_root,0);
#endif
	}

#if CXX11_HAVE_FUNC_DEFAULT_TEMPLATE_ARGS
	/*! \brief Add files from a path to the `file_tree`.
	    \tparam InIter  An input iterator type.

	    \param  start  An iterator to the start of a seqence of file or
	            directory names.
	    \param  end     The end of the sequence commencing at `start`.
	    \param  filter An optional filter for selecting the files to be
	        added.

	    All selcted files within the members of the argument sequence are
	    added to the `file_tree`.

	*/
	template<class InIter, class Filter = file_tree::no_filter>
#else
	template<class InIter, class Filter>
#endif
	void add(InIter start, InIter end, Filter & filter) {
		for (   ; start != end; add(*start++,filter)) {}
	}

	//! No copying
	no_copy _no_copy;

private:

	/*! \brief The root node of the `file_tree`.

	    The root node does not represent any filesystem object; it simply
	    unites all the top-level filesystem objects that are represented.
	*/
	node _root;
	/*! \brief The number of files in the `file_tree`.

	    This data member is updated by adding files to the tree so that
	    the population of the tree may be queried without calculation.
	*/
	unsigned _files;

};

#endif /* EOF*/
