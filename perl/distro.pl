#!/usr/bin/perl

#Report the distribution we are running on.

use strict;

my $issue = `cat /etc/issue`;

if ($issue =~ /openSUSE/i) {
	print "openSUSE\n";
}
elsif ($issue =~ /fedora/i) {
	print "fedora\n";
}
elsif ($issue =~ /ubuntu/i) {
	print "ubuntu\n";
}
else {
	print "unknown\n";
}

exit(0);

