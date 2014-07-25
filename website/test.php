<?php ?>
<p>
<ul>
<li>The directory <span class="code">coan/test_coan</span> in the extracted tarball contains a test harness.
This harness is built and executed by <span class="code">make check</span>.</li>
<li>The test harness executes each of the perl scripts (<span class="code">.pl</span> files) in the
directory <span class="code">coan/test_coan</span>.
Any of these scripts can be run independantly with a command like:
<p class="snippet">
<span class="code">perl -I ../perl <em>test_script.pl</em></span>
</li>
<li>If no options are passed
to <span class="code"><em>test_script.pl</em></span> it will be run with the defaults that are used
by <span class="code">make check</span>. The available options can be listed by running the script with
the option <span class="code">--help</span></li>
</ul>
<p>
<?php
