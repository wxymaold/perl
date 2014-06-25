#!/usr/bin/perl -w

sub Attribute
{
	my $file = shift @_;
	return "not exist" if not -e $file;
	
	my @att;
	push @att, "readalbe" if -r $file;
	push @att, "writable" if -w $file;
	push @att, "excutalbe" if -x $file;
	
	if (@att == 0) {return "exists";}
	join " and ", @att;
}

foreach my $tmp(@ARGV)
{
	my $ans = Attribute($tmp);
	print "$tmp is $ans.\n";

}
