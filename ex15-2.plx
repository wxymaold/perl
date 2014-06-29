#!/usr/bin/perl -w

my $tmp;

while (1)
{
	print "Input a number: ";
	chomp($tmp = <STDIN>);
	last if ($tmp =~ /\A\d+\Z/);
}
	
my $ans;

given($tmp)
{
	when ($_ % 3 == 0) {$ans.=' Fizz'; continue;}
	when ($_ % 5 == 0) {$ans.=' Bin'; continue;}
	when ($_ % 7 == 0) {$ans.=' Sausage';}
}

print "$tmp$ans";
	 
