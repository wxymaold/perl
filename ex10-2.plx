#!/usr/bin/perl -w

my $debug = defined $ENV{DEBUG} ? $ENV{DEBUG} : 1;

my $ans = int(1+rand 100);

print "ans is $ans\n" if $debug;

while (1)
{
	print "Input a number: ";
	chomp(<STDIN>);
	
	last if (/quit|exit|\As*\z/i);
	
	if ($_ == $ans)
	{
		print "You are right!\n";
		last;
	}
	print "Too low.\n" if ($_ < $ans); 
	print "Too Hight.\n" if ($_ > $ans); 
}
