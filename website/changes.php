<?php ?>

<p></p>
<p class="section">v6.0 Mike Kinghan 2014-08-25</p>
<ul>
<li><b>DEF0117:</b> Diagnostics that cited an input line in its supposedly 
original form did not include any extensions of the line after a 
line-continuation.
</li>
<li><b>DEF0118:</b> The <span class="code">--filter</span> option was broken for filenames that include 
multiple '.', by seeking to match extensions from the first '.' in the leafname
rather than the last. Thus <span class="code">--filter cpp</span> would fail to match a filename <span class="code">a.b.cpp</span>.
</li>
<li><b>DEF0119:</b> The comma-operator was not accepted in preprocessor expressions.
</li>
<li><b>DEF0120:</b> Macro expansion was broken when arguments shadow formal 
parameters. Macro-expansion has been re-written from scratch.
</li>
<li><b>DEF0121:</b> False positives for circular symbol definitions. A function-like
macro that invoked with an argument that is another call to the same macro was 
falsely diagnosed as having a circular definition. Fixed in macro-expansion re-write.
</li>
<li><b>DEF0122:</b> Ternary conditional expressions were not simplified when they 
could be.
</li>
<li><b>DEF0123:</b> Ill-formed expressions provoked diagnostics only in the 
`source` command. The other the other commands correctly evaluated them
as insoluble but do not diagnose them.
</li>
<li><b>DEF0124:</b> Diagnostics may truncate a cited input line. Diagnostics that 
cited an input line in its supposedly original form did not include any 
extensions of the line after a line-continuation.
</li>
<li><b>DEF0125:</b> The associativity of arithmetic operators was wrongly 
right-to-left, not left-to-right, so an arithmetic expression in three 
or more unparenthisized operands of co-precedent operators was wrongly 
calculated, e.g. 2-21-21 as 2 instead of -40.
</li>
<li><b>DEF0126:</b> Garbage in <span class="code">#if/​#elif</span> not an error. Coan issues a warning if 
excess tokens follow a directive. Where the directive is <span class="code">#if or #elif</span> 
the argument must be an expression, so an error should be diagnosed.
</li>
<li><b>DEF0127:</b> Macro calls to unconfigured symbols not diagnosed. A 
function-like macro call e.g. <span class="code">FOO(x)</span> with <span class="code">FOO</span> not a configured symbol 
was not diagnosed. The call was silently unresolved.
</li>
<li><b>DEF0128:</b> Evaluation of a character literal was skipped when it was the 
very first token in a directive argument
</li>
<li><b>DEF0129:</b> C++11 character literal prefixes 'u' and 'U' were not recognized.
</li>
<li><b>DEF0130:</b> UCN character literals, e.g. <span class="code">\u89AB,\U6789ABCD</span> were not 
recognized and cause a knock-on parsing bug by leaving the parser in a
false "in-quotation"-state after the end of the UCN literal.
</li>
<li><b>DEF0131:</b> Coan fails to allow the expansion of a macro argument to a 
system-include name or quoted string, thus faulting a valid macro call 
such a <span class="code">HAS_INCLUDE(<string>)</span> or <span class="code">HAS_INCLUDE("string")</span>
</li>
<li><b>TST0007:</b> The test suite is migrated from perl to python.
</li>
<li><b>TST0008:</b> The test suite is migrated from the autotools serial harness to the
parallel harness.
</li>
<li><b>REW0018:</b> <span class="code">--explain</span> option reworked. The <span class="code">--explain</span> option of the 
<span class="code">symbols</span> command is re-thought to show much more clearly and concisely 
the derivation of each macro expansion. It now reports successive steps 
of macro replacement for the explained invocation rather than 
recursively reporting the "most resolved form" of each macro invocation
in the expained invocation.
</li>
<li><b>REW0019:</b> Reporting for the <span class="code">symbols</span> command now always reports the 
provenance of a reported symbol: configured global, configured transient
or unconfigured.
</li>
<li><b>REW0020:</b> The <span class="code">--once</span> option is removed and replaced by two new options
<span class="code">--once-only</span> and <span class="code">--once-per-file</span>. The former is equivalent to the 
old <span class="code">--once</span>. The latter causes each distinct reported item to be 
reported just once per input file.
</li>
<li><b>REW0021:</b> Lexical scanning and expression parsing are re-written more 
efficiently, with the result that coan 6.0 processes files on average 
about twice as fast as coan 5.2
</li>
<li><b>REW0022:</b> Coan 6.0 is written entirely to the C++11 standard. Preprocessor
differentiation to support compiler versions that lag the standard is
removed and distro-versions that ship such compiler versions are not
supported.
</li>
<li><b>FEA0033:</b> The <span class="code">--evalsyms</span> option of the <span class="code">symbols</span> command is removed 
and replaced with the <span class="code">--expand</span> option. <span class="code">--evalsyms</span> reported the 
"most resolved form" of a symbol invocation, which was of little 
investigative use. <span class="code">--expand</span> reports the full macro expansion of a 
symbol invocation, and the integer to which it evaluates, if any.
</li>
<li><b>FEA0034:</b> The new command <span class="code">lines</span> is added, which causes coan to report 
<span class="code">#line</span>  directives. A corresponding option <span class="code">--lns</span> is provided for the 
`symbols` command, causing coan to consider only <span class="code">#line</span> directives for
reporting symbols.
</li>
<li><b>FEA0035:</b> The alternative operator keywords, <span class="code">and</span>, <span class="code">or</span>, <span class="code">not</span>, etc. are
now supported.
</li>
<li><b>FEA0036:</b> Coan now issues an informational diagnostic whenever a
<span class="code">#define</span> or <span class="code">#undef</span> retrospectively affects the meaning of previously
defined symbols.
</li>
</ul> 
<p></p>
<p class="section">v5.2 Mike Kinghan 2013-09-07</p>
<ul>
<li><b>DEF0110:</b> Coan deleted indentation from simplified directives
</li> 
<li><b>DEF0111:</b> UTF-8 encodings of 4 bytes were not identified.
<li><b>DEF0112:</b> The output of the <span class="code">symbols</span> command 
with option <span class="code">--evalsyms</span> could be corrupted by 
retention of logically deleted characters.
</li>
<li><b>DEF0113:</b> The <span class="code">spin</span> command was broken
on OS X due to a parochially Linux assumption about the 
<span class="code">errno</span> set by <span class="code">mkdir()</span> 
failure for an already-existing directory.
</li>
<li><b>DEF0114:</b> With the <span class="code">--replace</span> option 
a rewritten input file could have changed permissions.
</li> 
<li><b>DEF0115:</b> Symbols could be prematurely marked up-to-date for 
resolution, causing out-of-date resolved values to be reported with 
<span class="code">symbols --evalsyms</span> or new resolved values to 
go unreported with <span class="code">--once</span>.
</li>
<li><b>DEF0116:</b> Symbols were not reported for symbols 
<span class="code">--evalsyms</span>
when encountered in the resolution of another symbol.
</li>
<li><b>FEA0031:</b> Added option <span class="code">--explain</span> for
the <span class="code">sybols</span> command. In reporting theresolved 
value of a symbol <span class="code">sym</span>, coan will also recursively
report the resolution of each symbol that is resolved in the course of 
resolving <span class="code">sym</span>.
</li>
<li><b>FEA0032:</b> Added option <span class="code">--select name1[*][,name2[*]...]</span>
for the <span class="code">symbols</span> command. Restricts reported 
symbols to those that match one of the listed names or wildcard name prefixes.
</li>
</ul>
<p></p>
<p class="section">v5.1.2 Mike Kinghan 2012-06-04</p>
<ul>
<li><b>DEF0109:</b> Coan erroneously required whitespace to be found
between the definiendum of a macro and the definiens, faulting such valid cases as
<span class="code">#define FOO/*Comment*/</span> or <span class="code">#define MACRO/*Comment*/bar</span>
</li>
<li><b>REW0018:</b> Support for the clang C++ compiler >= v3.1 is introduced.
</li>
</ul>
<p class="section">v5.1.1 Mike Kinghan 2012-04-25</p>
<ul>
<li><b>DEF0105:</b> Deletion of superflous parentheses could in some cases
leave no whitespace between a directive keyword and the simplified body of the
directive.</li>
<li><b>DEF0106:</b> The --line option was ineffective in conjunction with
--replace.</li>
<li><b>DEF0107:</b> The --line option was accepted together with either
--discard blank or --discard comment although these pairs of are options are
mutually exclusive.</li>
<li><b>DEF0107:</b> The --discard blank and--discard comment options were
ineffective in the spin command.</li>
<li><b>DEF0108:</b> The parser parameter to stop at a double-quote is set for
parsing #include directives but not cleared when done, so that if a string
literal containing a comment-opener token,	e.g. "/*" is scanned before any
other directive the opening	quote stops the parser and a new scan immediately
commences which detects the opening of a genuine comment. Text is then
erroneously discarded until some condition forces comment-parsing to stop.</li>
</ul>	
<p class="section">Coan v5.1  Mike Kinghan 2012-02-01</p>
<ul>
<li><b>DEF0104:</b> The --debug option withdrawn in v5.0 remains documented in the
man page and --help output.</li>
<li><b>FEA0030:</b> An in-source #define SYM or #undef SYM directive is transiently
treated as a -DSYM or -USYM option within the source file where it is
found. Provide an option to suppress this behaviour at the user's risk,
possibly causing coan's keep-or-drop decisions to deviate from those the
preprocessor would make. Requested by Qualcomm UK.</li>
</ul>
<p class="section">Coan v5.0  Mike Kinghan 2011-12-06</p>
<ul>
<li><b>DEF0096:</b> Coan will parse without comment and evaluate either of:
<p>1)A boolean disjunction whose first operand is true and whose second
operand is garbage - evaluated as true.</p>
<p>2) A boolean conjunction whose first operand is false and whose second
operand is garbage - evaluated as false. E.g.</p>
<pre>
#if (TRUE_VAL || *!Nonsense%@)
// Keep this code ...
#endif
#if !(FALSE_VAL && *!Nonsense%@)
// Keep this code...
#endif
</pre>
<p>
This occurs because short-cirtcuiting the operator is applied too soon,
when the operation is identified and its first operand evaluated. Both
operands should be parsed and short-circuiting deferred until the
operation is applied.</p>
<p>This bug has existed in every version.</p>
</li>
<li><b>DEF0097:</b> Coan will mis-diagnose a missing right parenthesis in
certain cases when the entire argument of an #if is enclosed in
pathentheses, e.g. the legal code:
<pre>
#define LOCAL_MACRO
#undef UNDEF_LOCAL_MACRO
#if (defined (LOCAL_MACRO) && !defined (UNDEF_LOCAL_MACRO))
does_coan_keep_this_1();
#endif
</pre>
produces the error:
<pre>
line 3: error 0x043b0: Missing ")" in \
"#if (defined (LOCAL_MACRO) && !defined (UNDEF_LOCAL_MACRO))"
</pre>
<p>This occurs because the recursive xpression parser's logic for deleting
redundant parentheses is faulty: it assumes a) that parentheses are
always to be sought for deletion around an expression that, when
simplified, contains no binary operator, and b) that the outermost
parentheses in any such expression must surround it. But both (a) and
(b) are false in the case of defined(NAME) expressions, among others,
which contain no binary operator before or after simplification,
and contain outermost parentheses which do not surround the expression.</p>
<p>
Parentheses are eligible for deletion when they actually become
redundant as a result of eliminating an operand of a binary expression.
In these cases the redundant parentheses *will* surround the simplified
expression, and only in these cases will coan reliably determine the
positions of the parentheses to delete.</p>
<p>
Coan erroneously attempts to delete redundant parentheses, which do not
exist, from around the defined(NAME) operands in the conjunction above,
and	since the limits of the operands are not reliably determined in this
setting, the "outermost" parentheses of the operands are detected and
deleted at the positions marked ^ here:</p>
<pre>
(defined ^LOCAL_MACRO^ && !defined ^UNDEF_LOCAL_MACRO)^
</pre>
<p>
- leaving the rightmost parenthesis of the whole expression unmatched
whenthe parser looks for it next.</p>
<p>
The fix is to avoid attempting to delete redundant parentheses when it
is not actually warranted.</p>
</li>
<li><b>DEF0098:</b> Misevaluation of unary minus on unsigned integer constants,
Sourceforge bug #3440713. The application of unary minus to an unsigned
integer constant, e.g. -2U, is incorrectly evaluated as a negative signed integer.
The result should remain unsigned.
</li>
<li><b>DEF0099:</b>The application of unary minus to an unsigned integer constant,
e.g. -2U, is incorrectly evaluated as a negative signed integer. The result
should remain unsigned.
</li>
<li><b>DEF0100:</b> Coan may crash when processing a #define directive where the
definition of the symbol is continued over multiple lines.
<p>
Coan sizes an initial allocation of heap buffer from the length of the
first line of the definition and then consumes discardable characters
before begining to parse the definition. But If the first line of the
multi-line definition consists only of whitespace and a line-continuation,
then consumption of discardable characters brings parsing to the start of
the next line, which may be longer than the initial buffer, causing
parsing of the next line to overrun the initial heap allocation. A crash
results on the next attempted heap allocation.</p>
<p>
The fix is not to discard any characters before the parsing loop is
entered, since accounting of heap resource is done accurately within it.</p>
</li>
<li><b>DEF0101:</b> Coan fails to terminate a symbol's definition when it is
followed adjacently by a multi-line comment, e.g. in:
<pre>
#define NUM_OF_BITS_FOR_UL_CCCH_MSG_TYPE 0x02/* space before the comment
	or a single line comment and it's OK */
#ifdef FEATURE_MODEM_MBMS
#define NUM_OF_BITS_FOR_DL_MCCH_MSG_TYPE 0x04 /* Number of bits for MCCH
Message type*/
</pre>
<p>
with the effect that the definition of NUM_OF_BITS_FOR_UL_CCCH_MSG_TYPE
is parsed as: "0x02 #ifdef FEATURE_MODEM_MBMS"</p>
<p>
It looks like a parse error but actually isn't. Other examples with
the same feature are parsed correctly. It is caused when the line-buffer
gets reallocated between the calculations of the first and second
pointers that are used to locate the definition in the buffer. This can
result in the calculated length of the definition being arbitrarily
inaccurate.</p>
<p>
The fix to is ensure the delimiting pointers reflect any reallocation of
the line-buffer.</p>
</li>
<li><b>DEF0102:</b> Bug report:
<pre>
#if (T_XXXXX && L_M)
#endif

#if ( T_XXXXX && L_M )
#endif

At the first #if containing the symbol L_M, coan terminates with the error:

Missing ")" in "#if (T_XXXXX && L_M)"
</pre>
This parse error can occur for any symbol beginning with 'L'. Failure to
parse a wide-character constant from that point terminates the parse,
but it should resume from the 'L' to attempt to parse a symbol. 
</li>
<li><b>DEF0103:</b> The "?:" operator is now supported.</li>  

<li><b>FEA0028:</b> Macro-expansion supported. Macro-definitions that are
encountered in source are now parsed and will be used to expand
macro-invocations when evaluating directives. There is no support
for user-defined macros in the commandline options.
</li>
<li><b>FEA0028:</b> A new coan comand `spin' is supported. With the new option
--dir DIRANME, this command acts like the `source' command, with the
addition that all output files are written under the directory DIRNAME
with the same relative structure that the input files have in the
root filesystem.
</li>
<li><b>REW0017:</b>Coan is ported to C++. The porting is of variable thoroughness
and leaves countless infelicties to be addressed. Work in progress.       
</li>
<li><b>DOC0003:</b>Wholesale re-writing of the Doxygen documentation. 
</li>
</ul>
<p class="section">Coan v4.2.4  Mike Kinghan 2011-06-29</p>
<ul>
<li><b>DEF0092:</b> The --evalsyms option of the symbols command is discharged too
late when a symbol FOO that is not configured by the commandline is
encountered in an in-source	#define FOO [definition] or #undef FOO that
is eligible for reporting. In this case the	symbol is transiently added
to the defined/undefined symbols table for the course of the file and
the symbol should be evaluated for --evalsyms *after* that has been done,
but it is evaluated beforehand. This bug means that FOO will be reported
for --evalsyms as insoluble, whereas it should be resolved to the value
it assumes from the directive.
</li> 
<li><b>DEF0093:</b> Defective code composes the diagnostic that complains of a -D
option contradicting a prior -U option and will seg fault if executed.</li>
<li><b>DEF0094:</b> coan fails to diagnose the commandline usage error of e.g.
-DFOO -UFOO</li>
<li><b>DEF0095:</b> If an input file is broken symbolic link it is misidentified
as a directory.	If --recurse if not specified if is reported as an
ignored directory. If --recurse is specified a segfault ensues.</li>
</ul>
<p class="section">Coan v4.2.3  Mike Kinghan 2011-04-27</p>
<ul>
<li><b>FEA0027:</b> A 64-bit build for Windows is now supported.</li>
<li><b>DEF0085:</b> Coan failed to swallow the complete argument-list of a the macro call due
to fumbling macro arguments that contain operators. Then attempted to parse on from position inside
the macro call causing a spurious error.
</li>
<li><b>DEF0086:</b> Symbols that are #define-ed or #undef-ed in-source were added to the configured
symbols table for the current file in cases when they should not. They were added if the
directives containing them are not going to be dropped. They should be added only if the
directives containing them are not going to be dropped and are not in the scope of an insoluble
conditional directive.</li>
<li><b>DEF0087:</b> asserts() have been added to several source files that are followed by
declarations within the same scope. Standard C forbids declarations following statements in the same
scope. Visual C++ barfs on these errors.</li>
<li><b>DEF0088:</b> Visual C++ (correctly) gives unresolved symbol errors for the get_options
symbols optind, optopt and optarg, which were declared extern but not elsewhere defined. Now defined
in get_otpions.c.</li>
<li><b>DEF0089:</b> Fixed various possible-data-loss warnings in arithmetic for 64-bit build.</li>
<li><b>DEF0090:</b> mingw32 gcc 4.4.1 on windows does not recognize the "ll" printf format
for long long ints, breaking the build. "I64" format now used on condition that	GNUWIN is defined.
</li>
<li><b>DEF0091:</b> The test script coan_symbol_rewind_tester.pl fails to run on Windows
(rather than Wine) because it does not take options to indicate a Windows environment.</li>
<li><b>DOC0002:</b> The README file in coan/test_coan was out of date and garbled.</li>
</ul>
<p class="section">Coan v4.2.2  Mike Kinghan 2010-12-20</p>
<ul>
<li><b>DEF0080:</b> The fix for DEF0077 is inadequate and swallowed newlines can still result from
simplification of #if-diectives. The defective function <span class="code">print_line_cut()</span>
is now rewritten robustly from scratch.</li> <li><b>DEF0081:</b> Coan seg faults when a command is
issued that will read input from stdin and then CTRL-D is hit, e.g. <span class="code">$ coan source
-DFOO</span>. This bug has been lurking for years. Is caused by not reckoning with EOF at start of
file when checking for newline at at EOF.</li>
<li><b>DEF0082:</b> Coan seg faults when a command is issued to read input redirected from
/dev/null, e.g. <span class="code">$ coan source -D FOO &lt /dev/null</span>. Same cause as DEF0081.
</li><li><b>DEF0084:</b> No Doxygen documentation was generated for the header file integer_ops.h.
</li>     
</ul>
<p class="section">Coan v4.2.1  Mike Kinghan 2010-12-18</p>
<ul>
<li><b>DEF0077:</b> The implementation of FEA0026 causes a regression. A newline can be swallowed at
the end of simplified directive, concatenating it with the following line and yielding uncompilable
code.</li><li><b>DEF0078:</b> The number of backup files left by the test script
coan_symbol_rewind_tester.pl would increase forever unless manually deleted.</li>
<li><b>DEF0079:</b> The Doxygen configuration continued to give a version number of 4.1 for 4.2</li>
</ul>
<p class="section">Coan v4.2 2010-12-12</p>
<ul>
<li><b>DEF0063:</b> When the <span class="code">--discard comment</span> option is in effect for the
<span class="code">source</span>  command,
discarded lines	should be commented out by prefixing <span class="code">//coan &lt</span>. If a
block of lines to be discarded consists of a multi-line C-comment, then only the first of them is
commented in that style and the remainder are output unchanged as illegal text.</li>
<li><b>DEF0064:</b> When a line-continuation occurs within single-quotation, 2 bytes should be
discounted from the length of the quotation, i.e. 1 for the line-continuation character and 1 for
the following newline, but only 1 byte was deducted, causing parse errors in these contexts.</li>
<li><b>DEF0065:</b> Parsing a string opened by double-quotes should terminate if a non-escaped
newline is encountered but did not.</li>
<li><b>DEF0066:</b> Parsing macro-arguments failed to detect the end in the simple case "(arg)",
causing parse errors.</li>
<li><b>DEF0067:</b> Any call to the previously unused function
<span class="code">symbol_undefine()</span> would seg fault when it in turn called
<span class="code">eval_result_set_value(sym,0)</span>. The 2nd argument of <span class="code">
eval_result_set_value()</span> must be a non-null pointer to an
<span class="code">int_spec_t</span>.</li>
<li><b>DEF0068:</b> The macro <span class="code">ptr_set_count()</span> returned garbage due to
invalidly casting <span class="code">ptr_set_h</span> to <span class="code">ptr_vector_h</span>. Now
implemented as a function.</li> <li><b>DEF0069:</b> Dynamically adjust configuration to input
source. Allow <span class="code">#define</span> and <span class="code">#undef</span> directives
encountered	in a translation unit to be treated as transient <span class="code">--define</span> and
<span class="code">--undef</span> options for the course of that	translation unit. In the
absence of this capability the resolution of directives that involve symbols that have been
define-ed or undef-ed earlier in a translation unit may be false with respect to the C preprocessor.
</li>
<li><b>DEF0070:</b> The <span class="code">--discard blank</span> option of the
<span class="code">source</span> command ought to ensure that the number of source lines output
equals the number input, but the implementation failed to emit blank lines to compensate for lines
lost through simplification of directives, as distinct from lines simply dropped.</li>
<li><b>DEF0071:</b> When the <span class="code">--discard comment</span> option of the
<span class="code">source</span> command is given, an #if-block that is to be commented out will be
output as garbage if the controlling <span class="code">#if</span> condition has been simplified.
</li> 
<li><b>DEF0072:</b> Coan did not complain if an <span class="code">#if/#elif</span> directive had no
argument, simply evaluating the directive as insoluble.</li>
<li><b>DEF0073:</b> Coan's return codes inappropriately encoded the "lines dropped" summary for
commands other than <span class="code">source.</li>
<li><b>DEF0074:</b> <span class="code">make distcheck</span> was broken in the
<span class="code">man</span> target by some autotools upgrade since Coan 4.1.
Requires commands for the rule <span class="code">coan.1: man_pod.pl</span> to refer to
<span class="code">man_pod.pl</span> as <span class="code">$&lt</span> rather than as
<span class="code">man_pod.pl</span>.</li>  
<li><b>DEF0075:</b> <span class="code">distclean</span> on the man target did not have
<span class="code">clean</span> as a requisite, causing the built man files to remain after
<span class="code">distclean</span>.</li>

<li><b>DEF0076:</b> Corrected typos referring to coan (formerly sunifdef) as "sunidef" in the test scripts' help output.</li> 

<li><b>REW0011:</b> Eliminate all of the line-types <span class="code">LT_CONSISTENT_DEFINE_KEEP</span>, <span class="code">LT_CONSISTENT_DEFINE_DROP</span>,
<span class="code">LT_CONTRADICTORY_DEFINE</span>, <span class="code">LT_DIFFERING_DEFINE</span>, <span class="code">LT_CONSISTENT_UNDEF_KEEP</span>,
<span class="code">LT_CONSISTENT_UNDEF_DROP</span>, <span class="code">LT_CONTRADICTORY_UNDEF</span>, <span class="code">LT_INCLUDE_KEEP</span>,
<span class="code">LT_INCLUDE_DROP</span> for which if-control has no handlers
together with the Categorical module's independant handler for these types. Reduce them all
to 2 line-types, <span class="code">LT_DIRECTIVE_DROP</span> and <span class="code">LT_DIRECTIVE_KEEP</span> which get
handled en passant upstream of if-control. The Categorical module's surviving functions will pertain solely to handling
condictions between commandline -D or -U options and in-source <span class="code">#define</span> or
<span class="code">#undef</span> directives. Accordingly rename the module "Contradiction".</li>
<li><b>REW0012:</b> Simplify the tortuous implementation for evaluating <span class="code">#include</span> directives
and diagnosing errors therein while accomodating the possibility that the argument of the directive can be a defined symbol.</li> 
<li><b>REW0013:</b> Simplify the tortuous recursive implementation for obtaining the most-resolved form of a symbol.
Just exhaustively expand the symbol's definition and then replace each maximally large expression in that expansion
with its integer value.</li>
<li><b>REW0014:</b> Absorb all responsibilities for setting or resetting the defined/undefined status of a symbol and
diagnosing related errors into a new function, <span class="code">symbol_evaluate_status()</span>, eliminating the present diaspora of these
responsibilities.</li>
<li><b>REW0015:</b> The most-resolved form of a symbol that has a circular definition is now reported as
"insoluble" and no longer a partial resolution of the symbol's definition.</li>

<li><b>REW0016:</b> The coan man page is now built compressed, i.e. <span class="code">coan.1.gz</span> instead of
<span class="code">coan.1</span>, as required by packaging rules for most distros.</li>

<li><b>TST0006:</b> Scripts wine_cast_tester.sh, wine_bulk_tester.sh, wine_symbol_rewind_tester.sh have been added to
test_coan to enable running respectively of coan_case_tester.pl, coan_bulk_tester.pl, coan_symbol_rewind_tester.pl
against mingw32 builds under wine.</li> 
		
<li><b>FEA0026:</b> Simplification of directives should preserve parentheses for readability where the meaning will
otherwise depend on operator precedence.</li>
</ul>

<p class="section">Coan v4.1 2010-04-04</p>
<ul>
<li><b>DEF0059:</b> cpp syntax error diagnostics could contain garbage. When a cpp syntax error was
diagnosed in an <span class="code">#if</span> expression that has already been subject to some simplification,
the diagnostic message displayed garbage instead of the offending content, because
the line-buffer printed at this point contained non-ascii simplification codes.</li>
<li><b>DEF0060:</b> If coan was given 2 or more fully qualified filenames as input that did not
share a common root directory then it would construct a garbage input file tree and
fail, e.g. <span class="code">coan CMD [OPTIONS] /usr/include/errno.h /home/chevillot/test.h</span>.</li>
<li><b>DEF0061:</b> If source contained the character constant '\'' coan emitted a bogus "stray '\'" warning.</li>
<li><b>DEF0062:</b> A severe regression on v3.x: the <span class="code">source</span> command stripped
<span class="code">#include</span> directives from output.</li>
<li><b>TST0004:</b>Some case-test commandlines relied on unix/linux shell syntax and did not run on Windows.
All case-tests now run on Windows.</li>
<li><b>TST0005:</b> The test harness relied non-portably on Linux-like output of <span class="code">`uname -m`</span>
to determine host wordsize for *nix hosts and prescribed 32 bit for Windows hosts. Now wordsize is portably
determined for all hosts.</li>
<li><b>REW0005:</b> v4.0.1 introduced a restrictive dependency on header <span class="code">linux/limits.h</span>
for non-Windows builds.	This was unnecessary and use of <span class="code">limits.h</span> has been reinstated.</li>
<li><b>RET0001:</b> Withdraw the <span class="code">--constant {unk|eval[,del]}</span> option and replace it a
<span class="code">-e, --evalconsts</span> option with the effect that constants occurring as truth-functional
operands will be evaluated and eliminated, while by default they are not. Replace the existing
<span class="code">--eval</span> option	with <span class="code">--evalsyms</span> so that it will not be parsed
as a short match to <span class="code">--evalconsts</span>.	This amounts roughly to re-instating Unifdef's
handling of constants, with <span class="code">--evalconsts</span> equating to	Unifdef's
<span class="code">-k</span></li>
<li><b>FEA0026:</b> Allow a configuration to undefine all symbols that are not defined.
The <span class="code">-m, --implicit</span> option for all commands implicitly <span class="code">--undef</span>-s
any symbol that is not <span class="code">--define</span>-ed. The option enables the user to express the blanket
assumption that a symbol is undefined unless it is explicitly defined.</li>
</ul>

<p class="section">Coan v4.0.1 2010-03-09</p>
<ul>
<li><b>DEF0052:</b> A preprocessor directive found at end-of-file with a missing newline caused
coan to abend confused.</li>
<li><b>DEF0053:</b> When a configured symbol that is defined as some unconfigured symbol appears
in an expression coan concludes that the expression is illegal after the configured
symbol is parsed and issues a spurious diagnostic, which may be a warning or error
depending on the context. Coan ought to find that the expression is simply insoluble,
if it is in fact legal</li>
<li><b>DEF0054:</b> The implementation of preprocessor arithmetic was slapdash. All integer values
were construed as int or else too-big. 'U'/'u' and 'L'/'l' integer type-suffixes were
parsed but ignored. The implementation now correctly construes and calculates with values
of all the C integral types from char through unsigned long long. The integer promotions
and the usual arithmetic conversions are applied.</li>
<li><b>DEF0055:</b> Regression. Coan seg-faulted if the same symbol was -D-ed or -U-ed more than
once on the commandline.</li>
<li><b>DEF0056:</b> A symbol used as an argument to the #include directive (which is legal when
the symbol resolves as a header file name) would not be detected by the symbols command.</li>
<li><b>DEF0057:</b> The man page incorrectly prescribed <span class="code">-l</span> as a short form of the
<span class="code">--line option</span>.There is no short form.</li>
<li><b>DEF0058:</b> <span class="code">make distcheck</span> was broken due to use of the obselete environment variable
<span class="code">SUNIFDEF_PKGDIR</span> where <span class="code">COAN_PKGDIR</span> should have been used.</li>
<li><b>REW0006:</b> Coan would erase obfuscatory line-continuations embedded within identifiers simply
for	convenience	of parsing. It now preserves them.</li>
<li><b>REW0007:</b> The already swollen evaluator module became further bloated with the addition
of support for evaluating character constants. Two new modules have been detached from it:
the <b>integer_ops</b> module, which deals with evaluation of integer operations, and the
<b>integer_constant</b> module, which deals with evaluation of integer constants, including
character constants.</li>
<li><b>REW0008:</b> A new module has been introduced, the <b>lexicon module</b>, to centralise the
recognition of preprocessor keywords and operators.</li>
<li><b>FEA0027:</b> Character constants are now parsed as integer values. Multi-byte utf8 character
constants and character constants expressed as escaped hex or octal codes, as well as
ascii characters, are correctly evaluated.</li>
</ul>
<p class="section">Coan v4.0 2009-03-14</p>
<ul>
<li><b>DEF0047:</b> If a commandline option of the form <span class="code">-DSYM=VAL</span> is given
coan should recognise <span class="code">#define FOO TEXT</span> as equivalent to the commandline
option if <span class="code">TEXT</span> equates to <span class="code">VAL</span> when embedded comments are
re stripped out, but failed to do so, falsely diagnosing a differing redefintion of <span class="code">FOO</span>.
</li>
<li><b>DEF0048:</b> A string could be erroneously identified as a symbol
although not beginning with an alphabetic character or underscore.</li>
<li><b>DEF0049:</b> The state of the #if-control module was re-initialised
too late on reaching a new input file and was not re-initialised at all on
entering or leaving a new directory. Consequently the	progress messages
emitted on reaching a new file or on entering or leaving a directory	would
have a spurious trailer like <span class="code">(#if line 44 depth 1)</span> falling
through from the processing of the previous input file if that	processing
had ended with an parse error.</li>
<li><b>DEF0050:</b> A missing newline at end of file was diagnosed as an
error if encountered while processing a directive but otherwise not diagnosed
at all. This was illogical as in either case the event indicates that the
file may have been truncated, and in either case it merits only a warning
if nothing else is wrong. The event is now always diagnosed as a warning.</li>
<li><b>DEF0051:</b> A file extension <span class="code">EXT</span> given to the
<span class="code">--filter</span> option would be matched by any file whose extension
had <span class="code">EXT</span> as a terminal segment.</li>
<li><b>DEF0052:</b> Source code containing an escaped double-quote, e.g. 
 <span class="code">char ch == '\"';</span> would cause a spurious "stray \" warning.</li>
<li><b>FEA0018:</b>The commandline interface now supports a range of operating
modes or <em>commands</em>. The command is selected by the the first
option on the commandline, which is a keyword without a '-' or '--'
prefix. This new regime avoids a proliferation of cases in which options
associated with one modality are meaningless or	incompatible with another
modality but may still be intermixed.</li>
<li><b>FEA0019:</b> The former default mode of operation (editing the
input source to output as implied by the specified configuration)	is now
one the several operating modes and is selected by the <span class="code">source</span>
command. The <span class="code">source</span> command has the options:
<ul>
<li><span class="code">-r, --replace</span>
<ul><li>
Overwrite input file with output file. Implied by <span class="code">--recurse</span>.
With <span class="code">-r</span>, <span class="code">stdin</span> supplies the input <em>filenames</em>.
Otherwise <span class="code">stdin</span> supplies an input <em>file</em>;
the output file is stdout.</li></ul>
</li>
<li><span class="code">-BSUFFIX, --backup SUFFIX</span>
<ul><li>
Backup each input file by appending <span class="code">SUFFIX</span> to the name.
Applies only with <span class="code">-r</span>.</li></ul>
</li>
<li><span class="code">-kd, --discard drop</span>
<ul><li>Drop discarded lines from output.</li></ul>
</li>
<li><span class="code">-kb, --discard blank</span>
<ul><li>
Blank discarded lines on output.</li></ul>
</li>
<li><span class="code">-kc, --discard comment</span>
<ul><li>Comment out discarded lines on output.</li></ul>
</li>
<li><span class="code">-xd, --conflict delete</span>
<ul><li>Delete <span class="code">#defines</span> and <span class="code">#undefs</span> that contradict
<span class="code">-D</span> or <span class="code">-U</span> options.</li></ul>
</li>
<li><span class="code">-xc, --conflict comment</span>
<ul><li>Insert diagnostic comments on contradictions as per <span class="code">-xd</span>.
(Default.)</li></ul>
</li>
<li><span class="code">-xe, --conflict error</span>
<ul><li>Insert diagnostic #errors on contradictions as per <span class="code">-xd</span>.</li></ul>
</li>
 <li><span class="code">--line</span>
<ul><li>Generate <span class="code">#line</span> directives to make CPP line-numbering of output agree with
input even of lines are dropped.</li></ul>
</li>
<li><span class="code">-c, --complement</span>
<ul><li>Complement. Retain the lines that ought to be dropped and vice versa.
(Retained <span class="code">#-directives</span> will still be simplified where possible.)</li></ul>
</ul>                
</li>                
<li><b>FEA0020:</b> The former <span class="code">--symbols</span> option has been promoted to the
<span class="code">symbols</span> command. The <span class="code">symbols</span> command supports the options:
<ul>
<li><span class="code">-i, --ifs</span>
<ul><li>List symbols that occur #if[[n]def]/#elif directives.</li></ul>
</li>
<li><span class="code">-d, --defs</span>
<ul><li>List symbols that occur in #define directives.</li></ul>
<li><span class="code">-u, --undefs</span>
<ul><li>List symbols that occur in #undef directives.(Default: -i -d -u)</li></ul>
</li>
<li><span class="code">-o, --once</span>
<ul><li>List only the first occurrence of each symbol. (Default: List all occurrences.)</li></ul>
</li>
<li><span class="code">-A, --active</span>
<ul><li>List only symbols from operative directives</li></ul>
</li>
<li><span class="code">-I, --inactive</span>
<ul><li>List only symbols from inoperative directives</li></ul>
</li>
<li><span class="code">-L, --locate</span>
<ul><li>Report the source file and line number of each listed occurrence.</li></ul>
</li>
<li><span class="code">-e, --eval</span>
<ul><li>Report the resolved value of each symbol.</li></ul>
</ul>                
</li>                
<li><b>FEA0021:</b> The 'includes' command is provided for reporting
occurrences of <span class="code">#include</span> directives. The command has the options:
<ul>
<li><span class="code">-s, --system</span>
<ul><li>List system headers, i.e. <span class="code">&lt;header.h&gt;</span></li></ul>
</li>
<li><span class="code">-L, --local</span>
<ul><li>List local headers, i.e. <span class="code">"header.h"</span> (Default: -s -L)</li></ul>
</li>
<li><span class="code">-o, --once</span>
<ul><li>List only the first occurrence of each header. (Default: List all occurrences.)</li></ul>
</li>
<li><span class="code">-A --active</span>
<ul><li>List only headers from operative directives.</li></ul>
</li>
<li><span class="code">-I --inactive</span>
<ul><li>List only headers from inoperative directives.</li></ul>
</li>
<li><span class="code">-L, --locate</span>
<ul><li>Report the source file and line number of each listed occurrence.</li></ul>
</ul>                
</li>                
<li><b>FEA0022:</b> The 'defs' command is provided for reporting
occurrences of '#define' and '#undef' directives. The command has	the options:
<ul>
<li><span class="code">-o, --once</span>
<ul><li>List only the first occurrence of each distinct #define or
#undef directive (Default: List all occurrences.)</li></ul>
</li>
<li><span class="code">-A --active</span>
<ul><li>List only operative <span class="code">#define</span> and <span class="code">#undef</span> directives.</li></ul>
</li>
<li><span class="code">-I --inactive</span>
<ul><li>List only inoperative <span class="code">#define</span> and <span class="code">#undef</span> directives.</li></ul>
</li>
<li><span class="code">-L, --locate</span>
<ul><li>Report the source file and line number of each listed occurrence.</li></ul>
</li>
</ul>                
</li>
<li><b>FEA0023:</b> The <span class="code">pragmas</span> command is provided for reporting
occurrences of the <span class="code">#pragma</span> directive. The command has the same
options as <span class="code">defs</span>.
</li>		
<li><b>FEA0024:</b> The <span class="code">errors</span> command is provided for reporting
occurrences of the <span class="code">#error</span> directive. The command has the same
options as <span class="code">defs</span>.
</li>		
<li><b>FEA0025:</b> The <span class="code">directives</span> command is provided for reporting
occurrences of any directives. The <span class="code">directives</span> command accepts any of
the options of <span class="code">includes</span>, <span class="code">defs</span>, <span class="code">pragmas</span> and
<span class="code">errors</span> commands and combines their effects.
</li>		
</ul>
<p class="section">Sunifdef v3.1.3 2008-01-23</p>
<ul>
<li><b>DEF0041:</b> When <span class="code">-DSYM=VAL</span> is specified with <span class="code">VAL</span>
a hex integer constant, rather than a decimal constant, coan would fail to resolve <span class="code">SYM</span>
in expressions unless the <span class="code">--constant</span> eval was specified, which should be
unnecessary. The anomaly ocurred because <em>eval_symbol()</em> anticipated constant values
only as decimal constants and, upon encountering a hex-prefix <span class="code">"0x"</span> or <span class="code">"OX"</span>
would attempt to parse the token as an expression, invoking <em>eval_table()</em> and ultimately
<em>eval_unary()</em>. The latter function <em>would</em> resolve a hex constant, but only
if <span class="code">--constant</span> eval is in effect, since the function is assumed to operate on source
text rather than on the definiens of <span class="code">-DSYM=VAL</span>. The fix consists in recognising hex
constants as such in <em>eval_symbol()</em>.</li>
<li><b>DEF0042:</b> When <span class="code">-DSYM=VAL</span> is specified with <span class="code">VAL</span> a soluble
expression containing at least one integer constant operand, coan would fail to resolve
<span class="code">SYM</span> in expressions unless <span class="code">--constant</span> <span class="code">eval</span> was specified.
The reason is the same as in bug DEF0041. The fix consists in recording the origin of the text
upon which <em>eval_unary()</em> is called - source text or else the definiens of a
<span class="code">--defined</span> symbol - and always resolving integer contstants in the latter case.</li>
<li><b>DEF0043:</b> coan did not distinguish octal numerals as integer constants and evaluated
them as decimal numerals.</li>
<li><b>DEF0044:</b> coan did not recognise the suffixes u/U, l/L as belonging to integer constants.
These suffixes are now recognised; however, coan still evaluates all integer constants as ints and
performs signed integer arithmetic upon them. This is an unfixed bug.</li>
<li><b>DEF0045:</b> coan did not detect integer overflow in evaluating constants. Now detects overflow
whenever the value of a constant will exceed <span class="code">INT_MAX</span> and leaves the constant unresolved
with a warning to that effect.</li>
<li><b>DEF0046:</b> The <span class="code">--help</span> message contained an occurrence of <span class="code">'--constants'</span>
that ought to have been <span class="code">'--constant'</span>.</li>
</ul>
<p class="section">Sunifdef v3.1.2 2007-11-19</p>
<ul>
<li><b>DEF0040:</b> Defective filename matching could lead to a file being mistaken for a directory
when building the input file tree, if a directory name was an initial substring of a filename at the same
level.</li>
</ul>
<p class="section">Sunifdef v3.1.1 2007-11-17</p>
<ul>
<li><b>DEF0036:</b> Failed to detect unexpected end of file within an unmatched
<span class="code">if</span> when missing newline at end of file.</li>
<li><b>DEF0037:</b> Summary counts of files reached and files abandoned would be short
by 1 if a parse error was encountered without the <span class="code">--keepgoing</span> option in force.</li>
<li><b>DEF0038:</b> The extension-matching code supporting the <span class="code">--filter</span> option was
broken, allowing <span class="code">--filter</span> <span class="code">EXT</span> to match any file whose extension ended
in <span class="code">EXT</span>, even if not identical with <span class="code">EXT</span>.</li>
<li><b>DEF0039:</b> The current if-depth and if-line number were irrelevantly reported on
progress messages.</li>
<li><b>TST0004:</b> The test framework is ported from shell script to perl for portability
to Windows.</li>
</ul>
<p class="section">Sunifdef v3.1 2007-05-06</p>
<ul>
<li><b>FEA0017:</b> Now can cope with multi-line C-comments embedded within directives.</li>
<li><b>RET0003:</b> The <span class="code">--obfusc</span> option is withdrawn because the contexts formerly
classified as obfuscated are now handled in normal parsing.</li>
<li><b>DEF0030:</b> <span class="code">-DSYM=VAL</span> or <span class="code">-USYM=VAL</span> arguments when reported
by the <span class="code">--verbose</span> option do not include the <span class="code">=VAL</span> part.</li>
<li><b>DEF0031:</b> The <span class="code">--constant</span> policy should apply to constants only in
truth-functional contexts but was applied in all contexts. In arithmetic contexts constants
should always be treated as integers. (Falsely recorded as fixed DEF0010).</li>
<li><b>DEF0032:</b> With the <span class="code">--file</span> option the "Building input tree" diagnostic
was emitted even without <span class="code">--verbose</span> and could not be suppressed.</li>
<li><b>DEF0032:</b> The <span class="code">--line</span> option was not documented either in the man page or
in the <span class="code">--help</span> output.</li>
<li><b>DEF0033:</b> Return codes expressed all severities 1 level greater than the true level.</li>
<li><b>DEF0034:</b> A false verdict of differently redefined symbol would be returned when the
definiens of the symbol was not itself a symbol.</li>
<li><b>DEF0035:</b> Use of the <span class="code">--line</span> option did not set the <span class="code">SUMMARY_CHANGED_LINES</span>
flag in output.</li>
<li><b>DOC0003:</b> The man page is rationalised so that short and long variants of options are
listed together rather in separate groups.</li>
</ul>
<p class="section">Sunifdef v3.0</p>
<ul>
<li><b>FEA0009:</b> Unbalanced parentheses in expressions now provoke parse errors rather than
merely causing the expression to be unresolved.</li>
<li><b>FEA0010:</b> Every output message now has a reason code.</li>
<li><b>FEA0011:</b> coan is now agnostic between Unix and Windows line-ends.</li>
<li><b>FEA0012:</b> New <span class="code">--recurse</span> option enables recursion into input directories.</li>
<li><b>FEA0013:</b> Progress messages are a new category of messages with a severity lower than
informational messages.</li>
<li><b>FEA0014:</b> New <span class="code">--filter</span> option enables input files to be filtered by file
extension.</li>
<li><b>FEA0015:</b> New <span class="code">--keepgoing</span> option makes coan continue processing subsequent
input files after errors.</li>
<li><b>FEA0016:</b> Hex and octal constants are now recognised in preprocessor directives.</li>
<li><b>RET0002:</b> The <span class="code">--gag 0xXXXX</span> variant of <span class="code">--gag</span> option is withdrawn.</li>
<li><b>DEF0024:</b> Usage gave <span class="code">-gw</span> as default instead of <span class="code">-gi</span></li>
<li><b>DEF0025:</b> The <span class="code">--symbols</span> option could produce spurious warnings of contradictions.</li>
<li><b>DEF0026:</b> The length of formatted output messages was unsafely assumed not to exceed 2K.
Their length is now limited only by available heap.</li>
<li><b>DEF0027:</b> A symbol for which <span class="code">--undef SYM</span> was specified was evaluated as an
insoluble expression. This was at odds with the C Standard, which stipulates the preprocessor
will evaluate an undefined symbol as 0. The behaviour now agrees with the Standard.</li>
<li><b>DEF0028:</b> The state of the chew module was not fully reinitialised at entry to each
input file, causing any newline-within-quotation error to be spuriously repeated for subsequent
input files.</li>
<li><b>DEF0029:</b> An unarranted simplification was applied to any compound truth functional
expression containing more than 1 operator where the order of evaluation was determined by
precedence rather than by parentheses.</li>
<li><b>REW0003:</b> The inefficiently recursive formatting of output messages is reworked.</li>
<li><b>REW0004:</b> Source files <span class="code">diagnostic.*</span> renamed to <span class="code">report.*</span> to
reflect broader function</li>
<li><b>REW0005:</b> The range of message reason codes is widened from 6 to 7 bits to accomodate
additional diagnostics.</li>
<li><b>TST0003:</b> The test framework is extended to cover recursive processing of large source trees.</li>
<li><b>DOC0002:</b> An extensive <span class="code">EXAMPLES</span> section has been added to the man page.</li>
</ul>
<p class="section">Sunifdef v2.1.2</p>
<ul>
<li><b>DEF0022:</b> Fixed warnings for 64-bit build and unused function results.</li>
<li><b>DEF0023:</b> Fixed infringements of C89</li>
</ul>
<p class="section">Sunifdef v2.1.1</p>
<ul>
<li><b>DEF0021:</b> Evaluation of unparenthesised compound binary truth-functions "...op...op..."
lost information of unresolved operands causing incorrect simplifications.</li>
</ul>
<p class="section">Sunifdef v2.1</p>
<ul>
<li><b>DEF0001:</b> All usage errors now emit a diagnosis</li>
<li><b>DEF0017:</b> <span class="code">--symbols</span> option failed to list <span class="code">FOO</span> when
occurring in <span class="code">ifdef FOO</span> or <span class="code">ifndef FOO</span>.</li>
<li><b>DEF0018:</b> Unnecessary insistence on <span class="code">--replace</span> option to process multiple files
with <span class="code">--symbols</span> option.</li>
<li><b>DEF0019:</b> Lingering reference to <span class="code">--ignore</span> in usage diagnostic should have been
changed to <span class="code">--podsym</span>.</li>
<li><b>DEF0020:</b> The man page is more complete and correct.</li>
<li><b>FEA0001:</b> Enable discarded lines to be output in the form of comments.</li>
<li><b>FEA0002:</b> <span class="code">--symbols</span> option now has arguments <span class="code">all</span>,
<span class="code">first</span> and <span class="code">locate</span>. <span class="code">all</span> causes all occurrences of symbols to
be listed. <span class="code">first</span> causes only the first occurrence of each symbol to be listed.
<span class="code">locate</span> causes the file name and line number to be appended to each listed occurrence.</li>
<li><b>FEA0003</b> New <span class="code">--line</span> option generates line directives to make CPP line-numbering
of output agree with input even of lines are dropped.</li>
<li><b>RET0001</b> The <span class="code">--podsym</span> option, formerly the <span class="code">--ignore</span> option, is
dropped as not being plausibly worthwhile.</li>
</ul>
<p class="section">Sunifdef v2.0</p>
<ul>
<li><b>DEF0015:</b> Truth-functional simplification was broken for constant operands when
<span class="code">--constant eval</span> in force.</li>
<li><b>DEF0016:</b> Clarified murky evaluation of the <span class="code">--podsym</span> attribute over &amp;&amp;
and ||.</li>
<li><b>REW0001:</b> Parser substantially simplified and much more powerful. Previously only
evaluated truth-functions and relational operators; could evaluate FOO defined <span class="code">-DFOO=VAL</span>
only where <span class="code">VAL</span> was an integer constant. Now can evaluate all C operators except the
conditional operator; can evaluate <span class="code">FOO</span> provided <span class="code">VAL</span> can be recursively evaluated,
but will determine that circularly defined symbol <span class="code">-DFOO=BAR -DBAR=FOO</span> is unresolved
rather than loop forever.</li>
</ul>
<p class="section">Sunifdef v1.0.1</p>
Trivial fixes to sunifdef; significant fixes to the test framework.
<ul>
<li><b>DEF0012:</b> Warnings fixed to compile clean with -Wall</li>
<li><b>DEF0013:</b> Removed needless redefinition of <span class="code">PATH_MAX</span> from Windows build.</li>
<li><b>DEF0014:</b> <span class="code">make check</span> always reported success even if the tests reported failures</li>
<li><b>TST0002:</b> The test driver test_coan is strengthened:
<ul>
<li>To work without relying on <span class="code">system()</span> to return a true exit code from the executed command</li>
<li>To work without relaying on <span class="code">system()</span> to distinguish output redirectors from the arguments
of the command.</li>
<li>To work in a Wine (Windows on Unix) emulator environment when the input pathnames are not Windified</li>
<li>To work in a Cygwin (Unix on Windows) emulator environment when the input pathnames are not Windified.</li>
</ul>
</li>
</ul>
<p class="section">Sunifdef v1.0</p>
Initial stable release.
<ul>
<li><b>REW0002:</b> The <span class="code">-i | --ignore</span> option is renamed <span class="code">-p | --podsym</span> to indicate
better that the option causes lines to be treated as Plain Old data. The <span class="code">-t | --text</span> option
is renamed <span class="code">-P | --pod</span> for the same reason.</li>
<li><b>REW0003:</b> The implementation of the <span class="code">--constant</span> policy, though consistent, was not
conceptually coherent. Reworked.</li>
<li><b>FEA0006:</b> The <span class="code">-p | --podsym</span> option is honoured for <span class="code">if defined</span>
and <span class="code">if !defined</span> directives as well as <span class="code">ifdef</span> and <span class="code">ifndef</span>.</li>
<li><b>DEF0004:</b> Overlooked occurrence of "unifdef" rather than "sunifdef" in diagnostic output.</li>
<li><b>DEF0005:</b> The dropped lines count was not incremented for conflicts in the presence of the
<span class="code">--conflict delete</span> option.</li>
<li><b>DEF0006:</b> The <span class="code">SUMMARY_ERRORED_LINES</span> status flag (return code &amp; 64) was not set
in respect of the <span class="code">--conflict error</span> option.</li>
<li><b>DEF0007:</b> The <span class="code">--conflict error</span> option was not followed through for the case where
it causes an unconditional error to be output (return code &amp; 128).</li>
<li><b>DEF0009:</b> <span class="code">printline_cut()</span> was capable of leaving non-printable house-keeping bytes
in the tidied up output buffer.</li>
<li><b>DEF0010:</b> The <span class="code">--constant</span> policy should apply to constants only in truth-functional
contexts but was applied in all contexts. In arithmetic contexts constants should always be treated
as integers: the constant policy does not apply.</li>
<li><b>DEF0011:</b> Parentheses rendered redundant by simplification were not deleted in all cases where
they safely could be.</li>
<li><b>TST0001:</b> Automated test framework provided. Executes with <span class="code">make check</span>.</li>
</ul>
<p class="section">Sunifdef v0.1.4</p>
<p>Bug fix release.</p>
<ul>
<li><b>DEF0002:</b> <span class="code">memmove()</span> miscalculation could cause seg fault in symbol table lookups.</li>
<li><b>DEF0003:</b> Mis-ordering of insertions into the symbol table could cause lookups to fail erroneously.</li>
</ul>
<p class="section">Sunifdef v0.1.3</p>
<p>Initial Public Offering</p>
<?php
