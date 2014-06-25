#!/usr/bin/perl -w


die "No files!\n" unless @ARGV;

my $ans_name;
my $ans_age = 0;

foreach my $tmp(@ARGV)
{
	my $age = -M $tmp;
	($ans_name, $ans_age) = ($tmp, $age)
		if $age > $ans_age;
}

printf "The oldest file was %s, it was %.2f days old.\n",$ans_name, $ans_age;
