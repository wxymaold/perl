#!/usr/bin/perl -w

print "Input a string: ";
chomp (my $str = <STDIN>);

print "Input a substring: ";
chomp (my $sut = <STDIN>);

my $ans = -1;

while (1)
{
	$ans = index($str, $sut, $ans + 1);
	last if ($ans == -1);
	print "$ans\n";
}
