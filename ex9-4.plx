#!/usr/bin/perl -w


$^I =  ".bak";

while (<>) 
{
	if (/\A#!/)
	{
		$_ .= "## Copyright (C) 2014 by WangXy\n";
	}
	print;
}
