# $Id: IchiiSayaka.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::IchiiSayaka;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => '紗耶香',
		family_name    => '市井',
		pronunciation  => 'Ichii Sayaka',
		nick           => [qw(かあさん ちゃむ)],
		birthday       => Date::Simple->new('1983-12-31'),
		blood_type     => 'A',
		hometown       => '千葉県',
		emoticon       => ['ヽ^∀^ノ'],
		class          => 2,
		graduate_date  => Date::Simple->new('2000-05-12'),
	);
}

1;
