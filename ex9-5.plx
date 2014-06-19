#!/usr/bin/perl -w


$^I =  ".bak";

my $ok = 0;

while (<$ARGV>) 
{
	if (/\A## Copyright/)
	{
		$ok = 1;
	}
}

while (<$ARGV>)
{
	if ($ok==0 && /\A#!/)
	{
		$_ .= "## Copyright (C) 2014 by WangXy\n";
	}
	print;
}
