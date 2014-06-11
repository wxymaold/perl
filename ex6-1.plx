#!/usr/bin/perl -w


my %name =
{
	"fred" => "flintstone",
	"barney" => "rubble",
	"wilma" => "flintstone",
};

print "Input the first name: ";
chomp (my $fn = <STDIN>);


if (exists $name{$fn})
{
	print "The name is $fn $name{$fn}.\n";
}
else
{
	print "This man not exists.\n";
}
