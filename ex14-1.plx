#!/usr/bin/perl -w

my @tmp;

while (<>)
{
	push @tmp, $_;
}

sort {$a <=> $b} @tmp;

foreach (@tmp)
{
	printf "%15d\n", $_;
}
