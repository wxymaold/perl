#!/usr/bin/perl

sub greet
{
	state @tmp = ();
	
	
	print "Hi $_! ";
	if (@tmp)
	{
		print "I've seen: @tmp\n";
	}
	else
	{
		print "You are the first one here!\n";
	}
	push @tmp , $_;
	
}

greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");
