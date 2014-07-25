#!/usr/bin/python

# print the absolute path for an input pathname

import sys, os

abspath = os.path.abspath(sys.argv[1]);
print abspath

sys.exit(0)
