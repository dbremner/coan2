<?php ?>
<p></p>
<p class="section">Origins</p>
<p>
Coan originated as a rewrite of a version of Unifdef that I sporadically developed for the
internal use of my then employer, Symbian Software Ltd., during 2003 and 2004.
That version of Unifdef was derived from Tony Finch's 2003 version for Free BSD. To answer
Symbian's requirements, my version of Unifdef became fundamentally more powerful than
Tony Finch's and did not retain backward compatitibility with his. The code also sprawled
disgracefully. I undertook a rewrite on my own account in mid-2005, with a view to making it
a respectable open source contribution. I decided at that point too to adopt a new name for the tool,
feeling it had best be differentiated from the family of Unifdef variants aleady in circulation.
I called it "Sunifdef" (Son of Unifdef).</p>
<p>
I developed Sunifdef through 13 releases between February 2006 and January 2008.
By mid-2007 I recognised the larger functional "envelope" - for a configuration analyser -
that I wanted the tool to grow into and began to develop it as Sunifdef v4.0 in parallel with
the last three releases of Sunifdef 3.x. I planned to change the tool's name again to brand
its new focus but carry over the v4.0 release number to convey its maturity.
I settled on the name "Coan" late in 2007.</p>
<p style="text-align:right">Mike Kinghan</p>


<p class="section">People</p>
<ul>
<li><b>Tony Finch's</b> 2003 version of Unifdef was the original baseline for Coan.</li>
<li><b>William Roberts, Chief Integration Engineer at Symbian</b> in 2003, charged me with porting
Unifdef to Windows and developing it to answer Symbian's requirements. He specified the
original fitness tests that drove this development and deliberated with me over the ensuing
behaviour questions.</li>
<li><b>Tom Dickinson, Senior Software Engineer at Symbian</b> in 2003, organised and ran large
scale tests of my version of Unifdef and exposed many bugs and infelicities.</li>
<li><b>Dr. Jonathan Underwood</b> built the first Sunifdef RPM and submitted it for the
<a href="http://fedoraproject.org//">Feodora Project</a> Linux distribution. He has continued
to build the Fedora RPMs for Sunifdef and Coan.</li>
<li><b>Tony Whitely</b> of Qualcomm UK ran large scale tests of v5.x previews on Qualcomm
codelines in 2012, finding many bugs.</li>
</ul>
<p class="section">Tools</p>
<p>
The building, testing and documentation of Coan employs open source development tools:</p>
<ul>
<li><a href="http://gcc.gnu.org">GCC C++ compiler</a></li>
<li><a href="http://clang.llvm.org/">Clang C++ compiler</a></li>
<li><a href="http://en.wikipedia.org/wiki/GNU_build_system">The GNU Build System</a></li>
<li><a href="http://www.codelite.org/">Codelite IDE</a></li>
<li><a href="http://www.stack.nl/%7Edimitri/doxygen/">Doxygen documentation system</a></li>
<li><a href="http://www.perl.org/">The Perl programming language</a></li>
<li><a href="http://mercurial.selenic.com/">Mercurial source control management system</a></li>
</ul>
<?php
