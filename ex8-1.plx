#!/usr/bin/perl

while (<>) 
{ 
	chomp;
	if (/match/) 
	{
		print "Matched: |$`<$&>$'|\n"; 
	} 
	else 
	{
		print "No match: |$_|\n";
	}
}
