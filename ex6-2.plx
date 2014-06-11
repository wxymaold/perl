#!/usr/bin/perl -w


my %word;
my @tmp;

print "Input the some words, until CTRL + D.\n ";
chomp (@tmp = <STDIN>);

foreach my $x (@tmp)
{
	($word{$x})++;
}

foreach my $id (sort keys %word)
{
	print "The word $id is $word{$id}.\n";
}

