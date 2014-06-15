#!/usr/bin/perl

while (<>) 
{ 
	chomp;
	if (m^ \b (\w*a) \b (.{0,5}) ^sx) 
	{
		print "|$1|-|$2|\n"; 
	} 
	else 
	{
		print "No match: |$_|\n";
	}
}
