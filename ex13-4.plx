#!/usr/bin/perl -w

foreach (@ARGV)
{
	unlink @ARGV or warn "Can't rm: $!..\n";
}
