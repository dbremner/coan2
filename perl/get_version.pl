#!/usr/bin/perl

use strict;

my $topdir = $ARGV[0];

open IN,"<$topdir/configure.ac" or die("Can't open \"$topdir/configure.ac\": $!");

my $line;
my $version;
while($line = <IN>) {
	chomp($line);
	if ($line =~ m/AC_INIT\(coan,\W*(.+)\)/) {
		$version = $1;
		last;
	}
}
close IN;
if (defined($version)) {
	print $version;
	exit(0);
}
print STDERR "Failed to parse coan version from \"$topdir/configure.ac\"\n";
exit(1);

