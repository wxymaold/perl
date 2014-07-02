#!/usr/bin/perl -w

print localtime()."\n";

if (`date` =~ /\AS/)
{
	print "go play!\n";
}
else
{
	print "get to work!\n";
}
