#!/usr/bin/perl

while (<>) 
{ 
	chomp;
	if (/\s\z/) 
	{
		print "Match: |$_|'\n"; 
	} 
	else 
	{
		print "No match: |$_|\n";
	}
}
