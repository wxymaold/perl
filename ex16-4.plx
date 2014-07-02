#!/usr/bin/perl -w

sub my_hup_handler {state $n; print "Caught HUP: \n"; ++$n}
sub my_usr1_handler {state $n; print "Caught USR1: \n"; ++$n}
sub my_usr2_handler {state $n; print "Caught USR2: \n"; ++$n}
sub my_usr3_handler {print "Caught INT. Exiting.\n"; exit}

print "I am $$\n";

foreach my $signal (qw/int hup usr1 usr2/)
{
	$SIG{uc $signal} = "my_${signal}_handler";
}

while (1)
{
	sleep 1;
};
