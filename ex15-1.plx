#!/usr/bin/perl -w

my $ans = int(1+rand 100);

my $ok = 0;

while (1)
{
	print "Input a number: ";
	chomp(<STDIN>);
	
	last if (/quit|exit|\As*\z/i);
	
	given($_)
	{
		when (! /\A\d+\Z/) {print "Not a number!\n";}
		when ($_ > $ans) {print "Too High.\n";}
		when ($_ < $ans) {print "Too low.\n";}
		default {print "You are right!\n"; $ok = 1;}
	
	}
	
	last if $ok;
	 
}
