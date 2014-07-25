<?php ?>
<p>
Coan is a software engineering tool for investigating configurations of C or C++ source code.
It is a commandline tool. A <em>configuration</em> is a list of assumptions about the status
of some preprocessor symbols when the source code is compiled. You can assume that a symbol
is <em>defined</em>, possibly with a specified value, or assume that a symbol is
<em>undefined</em>. Here is an example configuration as you would write it on the
commandline:</p>
<p class="snippet">
-DARCH=X86 -UDEBUG -DLINUX -UWINDOWS -DMAJOR_VER=4 -DMINOR_VER=3 -DPATCH_VER=2</span>
</p>
<p>This configuration expresses the preprocessor assumptions:</p>
<p class="snippet">
#define ARCH X86<br>
#undef DEBUG<br>
#define LINUX<br>
#undef WINDOWS<br>
#define MAJOR_VER 4<br>
#define MINOR_VER 3<br>
#define PATCH_VER 2<br>
</p>
<p>Coan applies a given configuration to all the source files you specify to let you observe its effects.
It is important to understand that Coan will consider a symbol to be undefined only if you state an assumption to that effect,
or use the <span class="code">--implicit</span> option. By default, if a symbol is not mentioned in any of your
assumptions then Coan considers it <em>undetermined</em>: not defined and not undefined.</p>

<p>Source files might themselves contain <span class="code">#define</span> or <span class="code">#undef</span> directives that
are active under the given configuration and which may influence its effects. To capture that influence, Coan temporarily adds
each active <span class="code">#define</span> or <span class="code">#undef</span> directive to the configuration just for the
duration of the source file in which it is found.</p>   

<p>
Given a configuration and some source code, Coan can answer a range of questions about how
the source code would appear to the C/C++ preprocessor if that configuration of symbols
had been applied in advance.</p>
<p>
The most useful of the questions that Coan can answer is:</p>
 
<p class="question">What would the source code look like if re-written with all of the
simplifications that follow from the given configuration?</p>
<p>
Coan can produce the simplified re-write that answers this question. So, if the source code contains
redundant preprocessor clutter that is controlled by the status of some preprocessor symbols, Coan can be given
a configuration that expresses what the status of those symbols should be, and it will output a new version
of the source code from which the redundant clutter has been eliminated. Or, if the source code is
obscured by preprocessor logic that differentiates several variants by reference to preprocessor symbols,
Coan can be given a configuration that specifies any of these variants and will be able to generate a simpler
version of the source code that represents only the specifed variant.</p>
<p>
For example, if a copy of your source code is in the current directory, you can apply the example configuration above with the
command:</p>
<p class="snippet">
$>coan source -DARCH=X86 -UDEBUG -DLINUX -UWINDOWS -DMAJOR_VER=4 -DMINOR_VER=3 -DPATCH_VER=2 --replace *.c .*h 
</p>
<p>This will replace all the <span class="code">.c</span> and <span class="code">.h</span> files in the current directory with
versions that have been simplified in accordance with the chosen configuration.</p>
<p>
Or, if the source code is organised under a directory called <span class="code">app</span>, you can achieve
the same effect with the command:    
</p>
<p class="snippet">
$>coan source -DARCH=X86 -UDEBUG -DLINUX -UWINDOWS -DMAJOR_VER=4 -DMINOR_VER=3 -DPATCH_VER=2 --filter c,h
--recurse app 
</p>
<p>
Source code re-written by Coan is <em>not</em> preprocessed code as produced by the C preprocessor.
It still contains comments, macro-invocations, and #-directives. It is still source code, but
simplified in accordance with the chosen configuration.</p>

<p>
Coan strives to be an accurate and nearly complete parser for the C preprocessor language. (The conspicuous omission
at this time is expansion of function-like macros). This enables it to apply simplifications to source code that depend upon
complex <span class="code">#if</span> conditions, e.g. given the configuration above, Coan will be able to evaluate
an <span class="code">#if</span> condition such as:</p>

<p class="snippet">
#if (defined(LINUX) && \<br>
DEBUG == 0 && (MAJOR_VER >= \<br>
4 && ((MINOR_VER == 3 && PATCH_VER < 3) || PREQ_9631)))<br>
/* Retain... */<br>
#else<br>
/* Drop... */<br>
#endif<br>
</p>
<p>
and will output only the code commented <span class="code">/* Retain... */</span> - despite the fact that
<span class="code">PREQ_9631</span> is an unknown symbol.  
</p>
<p>
And where Coan is unable to fully evaluate an <span class="code">#if</span> condition on the basis of the configuration, it will
still simplify the condition as much as the configuration permits. E.g. given the configuration above,
Coan would simplify the code:
<p class="snippet">
#if (defined(LINUX) && \<br>
DEBUG == 0 && (MAJOR_VER >= \<br>
4 && (MINOR_VER == 3 && PATCH_VER < 3 && PREQ_9631)))<br>
/* Retain... */<br>
#else<br>
/* Drop... */<br>
#endif<br>
</p>
<p>
to:
</p>
<p class="snippet">
#if PREQ_9631<br>
/* Retain... */<br>
#else<br>
/* Drop... */<br>
#endif<br>
</p>
<p>
Other questions that Coan can answer include ones about the preprocessor symbols that appear in
the source code and their properties under a given configuration, e.g.</p>
 
<p class="question">What symbols would appear within <b>active</b> preprocessor directives under a given
configuration?</p>
<p>
(A preprocessor directive is <em>active</em> if it is not within the scope of any
false <span class="code">#if</span>). Supposing again that you are interested in the C-source in <span class="code">app</span>, you
can display a list of these symbols, with file names and line numbers, with the command: 
</p>
<p class="snippet">
$>coan symbols --recurse --locate --active --once --filter c,h app 
</p>
<p>
Coan can also answer a range of questions about any category of preprocessor directive that might
appear in the source code, e.g.</p>
 
<p class="question">What <span class="code">#include</span> directives that import system header files are
operative under a given configuration?</p>

<p>You can list these <span class="code">#include</span> directives from the C-source in
<span class="code">app</span> with the command:</p>
<p class="snippet">
$>coan includes --recurse --system --locate --active --filter c,h app 
</p>
<p>
As these examples indicate, a Coan command has the form:</p>
<p class="snippet">
coan <em>command</em> [<em>options</em>] [{ <em>file</em> | <em>directory</em> }...]  
</p>
<p>where <em>command</em> specifies the type of analysis you want to run, <em>options</em>
are parameters of the analysis, and { <em>file</em> | <em>directory</em> }... are the files or
directories containing the source code you want to analyse. The full set of Coan commands is:</p>
<p class="snippet">
source<br>
symbols<br>
includes<br>
defs<br> 
pragmas<br>
errors<br>
directives<br>
help<br>
version<br> 
</p>
<p> 
Complete documentation of these commands and their options is given in 
<a href="coan_man_1.html">The Coan Man Page.</p>
<?php
