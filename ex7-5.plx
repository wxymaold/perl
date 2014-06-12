#!/usr/bin/perl -w


while (<>)
{
	chomp($_);
	if (/(\S)\1/) {print $_;}
}
