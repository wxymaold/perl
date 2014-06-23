#!/usr/bin/perl -w

use DateTime;
use Time::Piece;

my $t = localtime;

my $now = DateTime->new
(
	year 	=> $t->year,
	month	=> $t->month,
	day		=> $t->day,
);

my $add = DateTime->new
(
	year	=> $ARGV[0],
	month	=> $ARGV[1],
	day		=> $ARGV[2],
);

my $tmp = $now - $add;

my @units = $tmp->in_units(qw/years months days/);
printf "%d years, %d months, and %d days\n", @units;
