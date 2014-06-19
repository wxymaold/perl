#!/usr/bin/perl -w


my $max;

sub max
{
	my($x, $y)= @_;
	if ($x > $y) {$x;} else {$y;}
}

foreach my $tmp (keys %ENV)
{
	my $x = length($tmp);
	$max = max($max, $x);
}

foreach my $tmp (key %ENV)
{
	printf "${$max}s %s\n", $tmp, defined $ENV{$tmp} ? $ENV{$tmp} : "undefined value";
}
