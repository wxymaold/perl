#!/usr/bin/perl -w

sub divisors
{
	my $number = shift;
	
	my @divisors = ();
	foreach my $divisor (2 .. $number/2)
	{
		push @divisors, $divisor unless $number % divisor;
	}
	return @divisors;
}

given ($ARGV[0])
{
	when (! /\A\d+\Z/) {print "Not a number!\n";}
	
	my @divisors = divisors($_);
	
	my @tmp =();
	
	when (@divisors ~~ @tmp) {print "$_ is prime!\n";}
	
	default {print "$_ is divisible by @divisors.\n";}
}
