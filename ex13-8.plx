#!/usr/bin/perl -w

foreach ( glob('.* *') )
{
	my $dest = readlink $_;
	print "$_ -> $dest\n" if defined $dest;
}
