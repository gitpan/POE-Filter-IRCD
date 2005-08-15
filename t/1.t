# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 1.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 7;
BEGIN { use_ok('POE::Filter::IRCD') };

my ($filter) = POE::Filter::IRCD->new();

isa_ok( $filter, 'POE::Filter::IRCD' );

my $original = ':test!test@test.test PRIVMSG #Test :This is a test case';
foreach my $irc_event ( @{ $filter->get( [ $original ] ) } ) {
  ok( $irc_event->{prefix} eq 'test!test@test.test', 'Prefix Test' );
  ok( $irc_event->{params}->[0] eq '#Test', 'Params Test One' );
  ok( $irc_event->{params}->[1] eq 'This is a test case', 'Params Test Two' );
  ok( $irc_event->{command} eq 'PRIVMSG', 'Command Test');
  foreach my $parsed ( @{ $filter->put( [ $irc_event ] ) } ) {
	ok( $parsed eq $original, 'Self Test' );
  }
}
