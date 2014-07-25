#!/usr/bin/perl

#print the absolute path for an input pathname

use strict;
use Cwd 'abs_path';

my $abspath = abs_path($ARGV[0]);
print "$abspath\n";

exit(0);





