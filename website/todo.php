<?php ?>
<p>
Items in the To Do list are classified as:</p>
<ul>
<li><a href="#Defects"><b>Defects:</b></a> Fixes for bugs, with codes <b>FIXnnnn</b></li>
<li><a href="#Documentation"><b>Documentation:</b></a> with codes <b>DOCnnnn</b></li>
<li><a href="#Features"><b>Features:</b></a> New capabilities, with codes <b>FEAnnnn</b></li>
<li><a href="#Retreats"><b>Retreats:</b></a> Removals of features, with codes <b>RETnnnn</b></li>
<li><a href="#Reworks"><b>Reworks:</b></a> Better implementations of functionality, with codes <b>REWnnnn</b></li>
<li><a href="#TestResources"><b>Test Resources</b></a> with codes <b>TSTnnnn</b></li>
</ul>
<p>
 
<p class="section"><a name="Defects">Defects</a></p>

<h4>DEF0104: Support big-endian architectures.</h4>
<p>
Arithmetic operations are currently little-endian dependant. 
</p>

<p class="section"><a name="Documentation">Defects</a></p>

<h4>DOC0001: Provide an HTML user guide.</h4>
<p>
Provide an HTML user guide. The man page is insufficiently instructive.</p>
 
<p class="section"><a name="Features">Features</a></p>

<h4>FEA0031: Support include-paths.</h4>
<p>
Provide an option for all commands to specify include paths, as per the C preprocessor,
which will cause Coan to locate and parse <span class="code">include</span>-ed files. This
feature will build upon the fix for <b>DEF0052</b>, enabling Coan to correctly resolve
directives that depend upon <span class="code">define</span> or <span class="code">undef</span>
directives within <span class="code">include</span>-ed files.
</p>

<h4>FEA0032: Provide an option to suppress a specific diagnostic.</h4>
<p>
This option existed prior to v4.0 but was withdrawn. User experience shows it
would be convenient especially to suppress the warnings for in-source
<span class="code">#define</span>-s
</p>

<h4>FEA0033: Implement support for coan pragmas.</h4>
<p>
Pragmas recognized by coan would enable coan options to be enabled or disabled
on a per-file basis.
</p>
 
<p class="section"><a name="Retreats">Retreats</a></p>
<p>None now</p>
       
<p class="section"><a name="Reworks">Reworks</a></p>

<p>As of the first C++ release v5.0, major reworks are too numerous to mention.</p>
  
<p class="section"><a name="TestResources">Test Resources</a></p>
<h4>TST0003: Provide memory-leak tests.</h4>
<p>
Enable stress tests to be run under the <code>valgrind</code> tool to test for memory leaks.
</p>
<h4>TST0006: Provide a "round-trip" validation test.</h4>
<p>
To show that Coan can correctly edit a substantial application code base for a given configuration,
provide a test in which Coan is used generate (a) a Windows-only configuration of its own code base,
(b) a Linux-only configuration of its own code-base; then build Coan for Windows, Linux respectively
from the output configurations; regenerate the same configurations using the excutables that have
been built from them and show that the second output configurations are the same as the first.
</p>
<?php
