# $Id: OgawaMakoto.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::OgawaMakoto;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => '真琴',
		family_name    => '小川',
		pronunciation  => 'Ogawa Makoto',
		nick           => [qw(マコッちゃん)],
		birthday       => Date::Simple->new('1987-10-29'),
		blood_type     => 'O',
		hometown       => '新潟県',
		emoticon       => ['∬∬ ´◇｀)'],
		class          => 5,
		graduate_date  => undef,
	);
}

1;
