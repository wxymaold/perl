#!/usr/bin/perl -w


while (<>)
{
	chomp($_);
	if (/(wilma.*fred|fred.*wilma)/) {print $_;}
}
