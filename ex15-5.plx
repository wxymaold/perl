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

print "Input your favorite number: ";
chomp (my $fa = <STDIN>);

given ($ARGV[0])
{
	when (! /\A\d+\Z/) {print "Not a number!\n";}
	
	my @divisors = divisors($_);
	
	when (@divisors ~~ 2) {print "$_ is even\n"; continue;}
	when (! (@divisors ~~ 2)) {print "$_ is odd\n"; continue;}
	when (@divisors ~~ @fa) {print "$_ is divisible by my favorite number\n"; continue;}
	
	my @tmp =();
	
	when (@divisors ~~ @tmp) {print "$_ is prime!\n";}
	
	default {print "$_ is divisible by @divisors.\n";}
}
