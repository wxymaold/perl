#!/usr/bin/perl -w


while (<>)
{
	chomp($_);
	if (/[A-Z]+[a-z]+/) {print $_;}
}
