#!/usr/bin/perl

@s = qw(fred betty barney dino wilma pebbles bamm-bamm);

print "Input some number, from 1 to 7, until Ctrl + D.\n";
@a = <STDIN>;

foreach $x (@a)
{
	if ($x >= 1 && $x <= 7)
	{
		print $s[$x - 1], "\n";
	}
	else
	{
		print "This is Not in range\n";
	}
}

