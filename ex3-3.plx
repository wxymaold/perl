#!/usr/bin/perl


print "Input some string, until Ctrl + D.\n";
chomp(@a = <STDIN>);

@a = sort @a;
print @a, "\n";

foreach (@a)
{
	$_ .= "\n";
}
print @a;


