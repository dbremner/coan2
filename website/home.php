<?php ?>
<p>Coan is a software engineering tool for analysing preprocessor-based configurations of C or C++ source code.
Its principal use is to simplify a body of source code by eliminating any parts that are redundant with
respect to a specified configuration. Dead code removal is an application of this sort.</p>

<p>Coan is most useful to developers of constantly evolving products with large code bases,
where preprocessor definitions and  <span class="code">&#35if</span>-directives are used differentiate progressive releases
or parallel variants of the product. In these settings the upkeep of the product's configuration tree
can become difficult and the incidence of configuration-related defects can become costly. (The side-panels
on these pages illustrate how preprocessor-encrusted production code can get.) Coan can largely automate
the maintenance of preprocessor-based configurations and the investigation of
configuration-related questions. <a href="index.php?page=about">More...</a>

<p class="section">Latest News</p>
<ul>
<li><b>2014-09-16</b> Coan v6.0.1 release</li>
<li><em>What's new?</em>
	<ul>
		<li>This patch release corrects minor autotooling bugs in the coan test-harness. 
		There are no changes to the coan executable apart from the version it reports.</li>
	</ul>
</li>
<li><b>2014-08-25</b> Coan v6.0 release</li>
<li><em>What's new?</em>
	<ul>
		<li>This feature release is the most extensive since coan 4.0:
			<ul>
				<li>Lexical scanning and expression parsing are re-written much more 
				efficiently, enabling coan 6.0 to process input on average 
				about twice as fast as coan 5.2
				</li>
				<li>Macro-expansion code is rewritten from scratch to cope
				robustly with function-like macro expansions for the first time.
				</li>
				<li>The <span class="code">--evalsyms</span> option of the <span class="code">symbols</span> command
				was of little investigative use. It is removed and a new option
				<span class="code">--expand</span> is introduced. <span class="code">--expand</span> reports the full 
				macro expansion of a  symbol invocation, and the integer to which 
				it evaluates, if any.
				</li>
				<li>The <span class="code">--explain</span>  option of the <span class="code">symbols</span> command is
				radically reworked to report the successive steps of a macro expansion.
				</li>
				<li>The <span class="code">--once</span> option is removed and replaced by two new options
				 <span class="code">--once-only</span> and  <span class="code">--once-per-file</span>. The former is equivalent to the 
				old  <span class="code">--once</span>. The latter causes each distinct reported item to be 
				reported just once per input file.
				</li>
				<li>An informational diagnostic is now issued whenever a
				<span class="code">#define</span> or <span class="code">#undef</span> directive retrospectively affects the 
				meaning of previously defined symbols, e.g. if <span class="code">#define BAR 1</span>
				is encountered after <span class="code">#define FOO BAR</span>, or when the
				commandline option <span class="code">-DFOO=BAR</span> is in effect.  
				</li>
				<li>The alternative operator keywords, <span class="code">and</span>, <span class="code">or</span>, <span class="code">not</span>, etc. are
				now recognized.
				</li>
				<li>The <span class="code">symbols</span> command now always reports the provenance
				of a reported symbol: 
					<ul>
						<li><b>configured global</b>, i.e. by a commandline <span class="code">-D</span> or <span class="code">-U</span> option
						</li>
						<li><b>configured transient</b>, i.e. by an in-source <span class="code">#define</span> or <span class="code">#undef</span> directive
						</li>
						<li><b>unconfigured</b>, i.e. neither of the above
						</li>
					</ul>
				</li>
			</ul>
		</li>
		<li>New binary packages are made for:-
		    <ul>
		        <li>Centos 7</li>
		        <li>Fedora 20</li>
		        <li>RedHat 7</li>
		        <li>OpenSUSE 13.1</li>
		        <li>Ubuntu 13.10</li>
		        <li>Ubuntu 14.04</li>
		   </ul> 		       		    
		</li>
		<li>Binary packages are no longer made for:-
		    <ul>
		        <li>Centos 6</li>
		        <li>RedHat 6</li>
		        <li>OpenSUSE 12.1</li>
		        <li>SUSE Linux Enterprise</li>
		        <li>Debian 6.0</li>
		        <li>Ubuntu 12.04</li>
		   </ul> 		       		    
		</li>
		<li>All (16) open bugs on v5.2 are closed</li>
		<li>A complete listing of the changes can be found in the
		<a href="index.php?page=changes">changelog.</a></li>
	</ul>
</li>
<li><b>2013-09-07</b> Coan v5.2 release</li>
<li><em>What's new?</em>
	<ul>
		<li>This feature release adds two new options to the <span class="code">symbols</span> command
			that analyses the processor macros used in the scanned code.
			<ul>
			<li>
			The <span class="code">select</span> option lets you specify a set of symbols or wildcard
			prefixes that will restrict coan's reporting to matching symbols.
			</li>
			<li>The <span class="code">explain</span> option directs coan to "backtrace" the expansion of
			each macro <e>S</e> that is reported by recursively reporting the expansion of each
			macro that is expanded in expanding <e>S</e>.    
			</li>
			</ul>
		</li> 
		<li>Apple OS X is now supported by the source tarball. (OS X binaries are not provided).
		</li>
		<li>All (7) open bugs on v5.1.2 are closed</li>
		<li>A complete listing of the changes can be found in the
		<a href="index.php?page=changes">changelog.</a>
		</li>
	</ul>
</ul>
<p></p>
<p class="section">Supported Platforms</p>
<p>Coan 6.0 has been built and tested successfully on the following platforms:</p>
<ul>
<li>CentOS Linux 7:- x86, x86_64</li>
<li>Debian Linux 7.0:- x86, x86_64</li>
<li>Fedora Linux 17, 18, 19, 20 :- x86, x86_64</li>
<li>openSUSE Linux 12.2, 12.3, 13.1:- x86, x86_64</li>
<li>Redhat Enterprise Linux 7:- x86_64</li>
<li>Ubuntu Linux 12.10, 13.04, 13.10, 14.04:- x86, x86_64</li>
<li>Microsoft Windows Windows 7:- x86_64</li>
</ul>
<p>There is a good chance that Coan will build from source on a system that
provides the GCC C++, GNU autotools tools and Python. <em>However it will not peform arithmetic
operations correctly on PowerPC, ARM or other big-endian architecture</em>. </p>

<p class="section">Authorship, Copyright &amp; License</p>
<ul>
<li>The author and maintainer of Coan is <b>Mike Kinghan</b>,
Some fundamental elements of Coan are derived from <a href="http://dotat.at/">Tony Finch's</a>
version of <a href="http://dotat.at/prog/misc/unifdef.c">Unifdef</a>.</li>
<li>Coan is copyright &copy 2004 - 2006 Symbian Software Ltd., &copy 2007 - 2014 Mike Kinghan,
except where otherwise asserted by copyright notices within the source files.
Some source files that vitally depend on cribs from the work of Tony Finch retain his copyright notice.</li>
<li>Coan is derived from BSD licensed code and is released under the
<a href="LICENSE.BSD.html">New BSD License</a>.
</li>
</ul>

<p class="section">Dedication</p>
<p>Coan is dedicated to the memory of <b>Altan Walker</b>, <em>nee</em> <b>Vaughan Kinghan</b>, 1964 - 2007.</p>
<?php

