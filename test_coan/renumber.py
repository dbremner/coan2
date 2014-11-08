#!/usr/bin/python

copyright = 'Copyright (c) 2014 Michael Kinghan'

import sys, argparse, os, atexit, re
from glob import glob
from bisect import bisect_right, bisect_left 

top_srcdir = os.getenv('COAN_PKGDIR')
if not top_srcdir:
	top_srcdir = os.pardir

sys.path.append(os.path.join(top_srcdir,'python'))

from coanlib import *

numpat = re.compile('^test(\d{4})\.*')
stempat = re.compile('test\d{4}')

set_prog('renumber')

parser = argparse.ArgumentParser(
	prog=get_prog(),
    formatter_class=argparse.RawDescriptionHelpFormatter,
    description='Renumber the test cases')
    				
parser.add_argument('-s', '--start', metavar='STARTNUM',
	type=int,default=-1,
    help='Start renumbering the tests consecutively from # STARTNUM (default = 0')

parser.add_argument('-a', '--adjust', metavar='DIFF',
	type=int,default=0,
    help='Adjust STARTNUM by the signed amount DIFF before renumbering')
    
args = vars(parser.parse_args())

def get_testno(fname):
	m = numpat.match(fname);
	if m:
		return m.group(1)
	return None
	
def renumber_edit(fname):
	print 'updating:',fname
	try:
		fh = open(fname)
	except IOError as e:
		 print "I/O error({0}): {1}".format(e.errno, e.strerror)
		 sys.exit(1)
	data = fh.read()
	fh.close()
	testrefs = stempat.findall(data)
	for testref in set(testrefs):
		m = numpat.match(testref)
		if m:
			oldnum = m.group(1)
			newnum = nummap[oldnum]
			data = data.replace('test' + oldnum,'test' + newnum)
	if len(testrefs):
		try:
			fh = open(fname,'w')
		except IOError as e:
			print "I/O error({0}): {1}".format(e.errno, e.strerror)
			sys.exit(1)
		fh.write(data)
		fh.close()

def renumber(oldname,newname):
	try:
		os.rename(oldname,newname)
		print oldname, '->',newname
	except OSError as e:
		 print "OS error({0}): {1}".format(e.errno, e.strerror)
		 sys.exit(1)
	renumber_edit(newname)

startno = args['start']
adjust = args['adjust']
curdir =  os.getcwd()
atexit.register(os.chdir, curdir)
os.chdir('test_cases')
testfiles = sorted(glob('test*.c'))
if not len(testfiles):
	print 'No test* files. Nothing to do'
	sys.exit(1)
nummap = {}
for fname in testfiles:
	num = get_testno(fname)
	nummap[num] = num	
if startno < 0:
	startno = int(get_testno(testfiles[0]))
key = 'test' + format(startno,'04')
if startno + adjust < 0:
	print 'Error: STARTNUM = ',startno,' + DIFF =',adjust,' < 0'
	sys.exit(1)
reno = startno + adjust
i = bisect_right(testfiles, key)
namei = i if not i else i - 1
if testfiles[namei].find(key + '.') == -1:
	print 'Error: No test number = ',startno
	sys.exit(1)
if reno < startno:
	for i in range(reno,startno):
		fname = 'test' + format(i,'04') + '.c'
		if fname in testfiles:
			print 'Error: Interval [(STARTNUM + DIFF) =',reno, \
				',STARTNUM = ',startno,') is not empty'
			sys.exit(1)
renos = format(reno,'04')
ntodo = 0
for i in range(namei,len(testfiles)):
	fname = testfiles[i]
	nums = get_testno(fname)
	if not nums:
		continue
	if int(nums) != startno:
		startno = int(nums)
		reno += 1
		renos = format(reno,'04')
	if nums == renos:
		continue
	ntodo += 1
	nummap[nums] = renos
if not ntodo:
	print 'No renumbering needed. Nothing to do'
	sys.exit(1)
	
reverse_nummap = dict([reversed(i) for i in nummap.items()])

while(ntodo):
	for newnum in reverse_nummap:
		newname = 'test' + newnum + '.c'
		if not os.path.isfile(newname):
			oldnum = reverse_nummap[newnum]
			oldname = 'test' + oldnum + '.c'
			renumber(oldname,newname)
			newname += '.expect'
			oldname += '.expect'
			renumber(oldname,newname)
			altnames = glob('altfiles/test' + oldnum + '*.c')
			for altname in altnames:
				new_altname = altname.replace(oldnum,newnum)
				renumber(altname,new_altname)
			ntodo -= 1
			del reverse_nummap[newnum]
			break

os.chdir(curdir)
for tester in glob('coan_*_tester.py'):
	renumber_edit(tester)
		
