# $Id: MichishigeSayumi.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::MichishigeSayumi;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => 'さゆみ',
		family_name    => '道重',
		pronunciation  => 'Michishige Sayumi',
		nick           => [qw(さゆみん)],
		birthday       => Date::Simple->new('1989-07-13'),
		blood_type     => 'A',
		hometown       => '山口県',
		emoticon       => ['从*・ 。・从'],
		class          => 6,
		graduate_date  => undef,
	);
}

1;
