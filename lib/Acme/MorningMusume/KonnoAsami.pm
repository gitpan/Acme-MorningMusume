# $Id: KonnoAsami.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::KonnoAsami;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => 'あさ美',
		family_name    => '紺野',
		pronunciation  => 'Konno Asami',
		nick           => [qw(紺ちゃん こんこん ぽんちゃん)],
		birthday       => Date::Simple->new('1987-05-07'),
		blood_type     => 'B',
		hometown       => '北海道',
		emoticon       => ['川o・-・）', '川*・д・*)'],
		class          => 5,
		graduate_date  => undef,
	);
}

1;
