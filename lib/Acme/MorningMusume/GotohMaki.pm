# $Id: GotohMaki.pm 14 2005-04-05 14:23:18Z kentaro $

package Acme::MorningMusume::GotohMaki;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.02';

sub info {
	return (
		first_name_ja  => '真希',
		family_name_ja => '後藤',
		first_name_en  => 'Maki',
		family_name_en => 'Gotoh',
		nick           => [qw(ごっちん)],
		birthday       => Date::Simple->new('1985-09-23'),
		blood_type     => 'O',
		hometown       => '東京都',
		emoticon       => ['（ ´ Д ｀)'],
		class          => 3,
		graduate_date  => Date::Simple->new('2002-09-23'),
	);
}

1;
