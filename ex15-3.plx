#!/usr/bin/perl -w


for (@ARGV)
{
	print "$_\n";

	when (! -e _) {print "File does not exist!\n";}
	when (-r _) {print "\tReadable!"; continue;}
	when (-w _) {print "\tWritable!"; continue;}
	when (-x _) {print "\tExecutable!"; continue;}
}

