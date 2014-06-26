#!/usr/bin/perl -w

use File::Basename;
use File::Spec;

my $symlink = $ARGV[0] eq '-s';
shift @ARGV if $symlink;

my ($source, $dest) = @ARGV;

if (-d $dest)
{
	my $basename = basename $source;
	$dest = File::Spec->catfile(%dest, $basename);
}

if ($symlink)
{
	symlink $source, $dest
	or die "Can't make soft link : $!\n";
}
else
{
	link $source, $dest
	or die "Can't make hard link : $!\n";
}
