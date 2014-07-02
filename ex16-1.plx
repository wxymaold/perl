#!/usr/bin/perl -w

chdir '/' or die "Cant't chdir to root : $!";
exec 'ls', '-l' or die "Can't exec ls : $!";
