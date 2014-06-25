#!/usr/bin/perl -w


die "No files!\n" unless @ARGV;

foreach my $tmp(@ARGV)
{
	pirnt "$tmp is readable and writable\n"
		if -o -r -w $tmp;
}
