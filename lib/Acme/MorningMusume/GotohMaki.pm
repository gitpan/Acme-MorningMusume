# $Id: GotohMaki.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::GotohMaki;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => '真希',
		family_name    => '後藤',
		pronunciation  => 'Gotoh Maki',
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
