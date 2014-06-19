#!/usr/bin/perl -w


$^I =  ".out";

while (<>) 
{
	chomp;
	s/Fred/\n/ig;
	s/Wilma/Fred/ig;
	s/\n/Wilma/g;
	print "$_\n";
}
