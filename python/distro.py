#!/usr/bin/python

# Report the distribution we are running on.

import sys, subprocess, re

issue = subprocess.check_output(['cat', '/etc/issue'])

if re.search('openSUSE',issue,re.IGNORECASE) != None:
	print "openSUSE\n"
elif re.search('fedora',issue,re.IGNORECASE) != None:
	print "fedora\n"
elif re.search('ubuntu',issue,re.IGNORECASE) != None:
	print "ubuntu\n"
else:
	print "unknown\n"

sys.exit(0)

