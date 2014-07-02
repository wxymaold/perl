#!/usr/bin/perl -w

open STDOUT , '>', 'ls.out' or die "Can't write to ls.out: $!";
open STDERR , '>', 'ls.err' or die "Can't write to ls.err: $!";
chdir '/' or die "Cant't chdir to root : $!";
exec 'ls', '-l' or die "Can't exec ls : $!";
