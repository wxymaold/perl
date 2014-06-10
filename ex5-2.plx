#!/usr/bin/perl -w

chomp (my @str = <STDIN>);

print "1234567890" X 6 ,"\n";

foreach (@str)
{
	printf "%20s\n", $_;
}
