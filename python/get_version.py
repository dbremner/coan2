#!/usr/bin/python

import sys, re
from coanlib import fopen

topdir = sys.argv[1];
version = None

fh = fopen(topdir + '/configure.ac','r')
for line in fh:
	text = line.rstrip();
	match = re.search('AC_INIT\(coan,\W*(.+)\)',text)
	version = match.group(1)
	if version:
		break
		
fh.close()

if version:
	print version
	sys.exit(0);

sys.stderr.write('Failed to parse coan version from \"' + topdir \
	+ '/configure.ac\"\n')
sys.exit(1);

