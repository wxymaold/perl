#!/usr/bin/perl

sub total
{
	my @tmp = @_;
	my $num = 0;
	
	foreach (@tmp)
	{
		$num += $_;
	} 
	$num;
}


my $ans = total(1..1000);
print "The total of 1~1000 is $ans.\n";
