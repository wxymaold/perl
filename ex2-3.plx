#!/usr/bin/perl

$pi = 3.141592654;

print "Input the r:\n";
chomp($r = <STDIN>);

if ($r <= 0) {$r = 0;}
 
$c = $r * 2 * $pi;
print "$c\n";
