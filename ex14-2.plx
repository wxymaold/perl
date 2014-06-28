#!/usr/bin/perl -w

my %last_name = qw
{
	fred flintstone
	Wilma Flintstone
	Barney Rubble
	betty rubble
	Bamm-Bamm Rubble
	PEBBLES FLINTSTONE
};

my @tmp = sort
{
	"\L@last_name{$a}" cmp "\L$last_name{$b}"
	or
	"\L$a" cmp "\L$b"
} keys %last_name;

foreach (@tmp)
{
	printf "%s, %s\n", $_, $tmp{$_};
}
