#!/usr/bin/perl

sub average
{
	my $tmp = 0;
	my $n = 0;
	
	foreach (@_)
	{
		$tmp += $_;
		$n++;
	}
	if ($n == 0) {return ;}
	$tmp /= n;
	$tmp;
}

sub above_average
{
	my $ave = average(@_);
	my @ans = ();
	
	foreach (@_)
	{
		if ($_ > $ave)
		{
			push @ans, $_;
		}
	}
	@ans;

}

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";
