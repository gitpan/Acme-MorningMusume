# $Id: FukudaAsuka.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::FukudaAsuka;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.02';

sub info {
	return (
		first_name_ja  => '明日香',
		family_name_ja => '福田',
		first_name_en  => 'Asuka',
		family_name_en => 'Fukuda',
		nick           => [qw(あすか 焼き銀杏)],
		birthday       => Date::Simple->new('1984-12-17'),
		blood_type     => 'B',
		hometown       => '東京都',
		emoticon       => ['（0゜-゜0）'],
		class          => 1,
		graduate_date  => Date::Simple->new('1999-04-18'),
	);
}

1;
