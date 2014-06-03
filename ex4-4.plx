#!/usr/bin/perl

sub greet
{
	state $tmp = undef;
	
	
	print "Hi $_! ";
	if (defined($tmp))
	{
		print "$tmp is also here!\n";
	}
	else
	{
		print "You are the first one here!\n";
	}
	$tmp = $_;
	
}

greet("Fred");
greet("Barney");
