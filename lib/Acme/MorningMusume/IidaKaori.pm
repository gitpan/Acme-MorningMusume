# $Id: IidaKaori.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::IidaKaori;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => '圭織',
		family_name    => '飯田',
		pronunciation  => 'Iida Kaori',
		nick           => [qw(かおりん ジェイソン)],
		birthday       => Date::Simple->new('1981-08-08'),
		blood_type     => 'A',
		hometown       => '北海道',
		emoticon       => ['川 ’～’）||', '川 ﾟ～ﾟﾉ||', '（　゜皿 ゜）'],
		class          => 1,
		graduate_date  => Date::Simple->new('2005-01-30'),
	);
}

1;
