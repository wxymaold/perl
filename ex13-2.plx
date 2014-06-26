#!/usr/bin/perl -w


print "Which way? (Default is your home directory)";
chomp (my $dir = <STDIN>);

if ($dir =~ /\A\s*\Z/)
{
	chdir or die "Can't chdir to your home way: $!";
}
else
{
	chdir $dir or die "Can't chdir: $!";
}

my @files = <.* *>;
foreach (sort @files)
{
	print "$_\n";
}
