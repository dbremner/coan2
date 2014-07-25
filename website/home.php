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

<li><b>2012-06-04</b> Coan v5.1.2 release</li>
<li><em>What's new?</em>
	<ul>
		<li>This patch release adds build support for the clang C++ compiler,
		    in addition to GCC and MSVC++. You will need clang v3.1 or later
		    to build coan. Build instructions are on the <a href="index.php?page=install">install</a> page.
		<li>New binary packages are made for:-
		    <ul>
		        <li>Fedora 17</li>
		        <li>SUSE Enterprise Linux 11 SP 2</li>
		        <li>Ubuntu 12.04</li>
		   </ul> 		       		    
		</li>
		<li>All (1) open bugs on v5.1.1 are closed</li>
		<li>A complete listing of the changes can be found in the
<a href="index.php?page=changes">changelog.</a></li>
</ul>
</li>
<p></p>
<p class="section">Supported Platforms</p>
<p>Coan 5.1.2 has been built and tested successfully on the following platforms:</p>
<ul>
<li>CentOS Linux 6:- x86, x86_64</li>
<li>Debian Linux 6.0:- x86, x86_64</li>
<li>Debian Linux 7.0:- x86, x86_64</li>
<li>Fedora Linux 17, 18, 19 :- x86, x86_64</li>
<li>openSUSE Linux 11.4, 12.1, 12.2, 12.2:- x86, x86_64</li>
<li>Redhat Enterprise Linux 6:- x86, x86_64</li>
<li>SUSE Linux Enterprise Linux 11, 11_SP1, 11_SP2, 11_SP3:- x86, x86_64</li>
<li>Ubuntu Linux 11.10, 12.04, 12.10, 13.04:- x86, x86_64</li>
<li>Microsoft Windows Windows 7:- x86, x86_64</li>
</ul>
<p>There is a good chance that Coan will build from source on a system that
provides the GNU build tools and Perl. <em>However it will not peform arithmetic
operations correctly on PowerPC, ARM or other big-endian architecture</em>. </p>

<p class="section">Authorship, Copyright &amp; License</p>
<ul>
<li>The author and maintainer of Coan is <b>Mike Kinghan</b>,
Some fundamental elements of Coan are derived from <a href="http://dotat.at/">Tony Finch's</a>
version of <a href="http://dotat.at/prog/misc/unifdef.c">Unifdef</a>.</li>
<li>Coan is copyright &copy 2004 - 2006 Symbian Software Ltd., &copy 2007 - 2011 Mike Kinghan,
except where otherwise asserted by copyright notices within the source files.
Some source files that vitally depend on cribs from the work of Tony Finch retain his copyright notice.</li>
<li>Coan is derived from BSD licensed code and is released under the
<a href="LICENSE.BSD.html">New BSD License</a>.
</li>
</ul>

<p class="section">Dedication</p>
<p>Coan is dedicated to the memory of <b>Altan Walker</b>, <em>nee</em> <b>Vaughan Kinghan</b>, 1964 - 2007.</p>
<?php

