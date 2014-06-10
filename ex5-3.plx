#!/usr/bin/perl -w

print "Input the width: ";
chomp (my $wide = <STDIN>);

print "Input some String, until Ctrl+ D : ";
chomp (my @str = <STDIN>);

print "1234567890" X ($wide/10+1) ,"\n";

foreach (@str)
{
	printf "%{$wide}s\n", $_;
}
