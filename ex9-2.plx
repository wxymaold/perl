#!/usr/bin/perl -w


$^I =  ".out";

while (<>) 
{ 
	s/Fred/Larry/ig;
	print;
}
