#!/usr/bin/perl

print "Input the String: ";
chomp($a = <STDIN>);
print "Input the Number: ";
chomp($b = <STDIN>);

$c = $a x $b;
print "$c\n";

