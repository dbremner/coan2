<?php ?>
<p></p>
<p class="section">Linux tarball</p>
<ul>
<li>To build coan from source, you must have installed the <a href="http://en.wikipedia.org/wiki/GNU_build_system">GNU Build System</a>
with C++ support. It is assumed you have done this.</li>
<li>Download the tarball to a location under your home directory</li>
<li>Extract the directory <span class="code">coan</span> from the tarball. Do not rename it.</li>
<li>To install from source with the default GCC compiler:
<ul>
<li>Open a command console and <span class="code">cd</span> into the coan directory</li>
<li>Run <span class="code">./configure</span></li>
<li>If all is well, run <span class="code">make</span></li>
<li>If all is well, run <span class="code">make check</span> if you want to run the test scripts.
<em>N.B. This will take a long time.</em>
If the make check is successful it will print
<p class="snippet">All 5 tests passed
</p>
</li>
<li>If <span class="code">make check</span> fails, capture its output and send it with a bug report.</li>
<li>Run <span class="code">make install</span></li>
</ul>
</li>
<li>To install from source with the <a href="http://clang.llvm.org/">Clang C++ compiler</a> >= v3.1:-
<ul>
<li>You must have installed Clang, as well as the GNU build system with C++ support. You must have <span class="code">clang++</span> on your <span class="code">PATH</span>.</li>
<li>Then, follow the same procedure as for GCC, but instead of running <span class="code">./configure</span>, run:-
<p class="snippet">./configure CXX=clang++ CXXFLAGS=-isystem=/usr/include/c++/X.Y.Z 
</p>
where <span class="code">X.Y.X</span> is the GCC version number whose C++ library you wish to use.
</li>
</ul> 
</li>
<li>To test that Coan is installed:
<ul>
<li>Run <span class="code">coan -v</span>, and expect output like:
<p class="snippet">
coan, version 5.1.2 for 64 bit Unix/Linux (built Jun  4 2012,11:23:05)
coan: while parsing options: progress 0x02101: Completed, exit code 0x00<br>
</p>
</li>
<li>Run <span class="code">man coan</span>, and expect to see the coan man page.</li>
</ul>
</li>
</ul>
<p class="section">Linux DEB</p>
<ul>
<li>Download the appropriate binary DEB for your system:
<ul>
<li>For <b>X86</b> machines, <span class="code">coan_X.Y.Z-for-Ubuntu_10.04_i386.deb</span></li>
<li>For <b>X86_64</b> machines, <span class="code">coan_X.Y.Z-for-Ubuntu_10.04_amd64.deb</span></b></li>
</ul>
</li>
<li>Your Linux system probably provides a graphical installer for DEBSs. In that case just
click on the DEB to invoke the graphical installer.</li>
<li>To install the binary DEB from the commandline, e.g. for the X86 architecture,
run <span class="code">dpkg &#8211;i coan_X.Y.Z-for-Ubuntu_10.04_i386.deb</span>. The same command suffices to upgrade an existing
installation. Consult <span class="code">man dpkg</span> for documentation.</li>
</ul>
<p class="section">Linux RPM</p>
<ul>
<li>Download the appropriate binary RPM for your system:
<ul>
<li>E.g. for <b>X86</b> machines, <span class="code">coan-X.Y.Z-for-Fedora_15.i386.rpm</span></li>
<li>E.g. for <b>X86_64</b> machines, <span class="code">coan-X.Y.Z-for-Fedora_16.x86_64.rpm</span></b></li>
</ul>
</li>
<li>Your Linux system probably provides a graphical installer for RPMs. In that case just
click on the RPM to invoke the graphical installer.</li>
<li>To install the binary RPM from the commandline, e.g. for the X86 architecture,
run <span class="code">rpm &#8211;ivh coan-X.Y.Z-for-Fedora_15.i386.rpm</span>. To upgrade
an existing installation replace the <span class="code">-i</span> option with
<span class="code">-U</span>. Consult <span class="code">man rpm</span> for documentation.</li>
</ul>
<p class="section">Windows</p>
<ul>
<li>Download the Windows binary <span class="code">coan-X.Y.Z.x86.exe</span> or
<span class="code">coan-X.Y.Z.x86_64.exe</span> to a location of your choice.</li>
<li>Rename it to <span class="code">coan.exe</span>.</li>
<li>If neccessary, modify the <span class="code">PATH</span> environment variable on your system to include
the path where <span class="code">coan.exe</span> is located. (You will need to be logged in as
an administrator to do this).</li>
<li>To test that Coan is installed, run <span class="code">coan -v</span>, and expect output
like:
<p class="snippet">coan, version 5.1.2 for 64 bit Windows (built Jun  4 2012,11:23:05)
coan: while parsing options: progress 0x02101: Completed, exit code 0x00<br>
</p>
</li>
</ul>
<?php
