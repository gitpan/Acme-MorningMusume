# $Id: YasudaKei.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::YasudaKei;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => '圭',
		family_name    => '保田',
		pronunciation  => 'Yasuda Kei',
		nick           => [qw(けいちゃん)],
		birthday       => Date::Simple->new('1980-12-06'),
		blood_type     => 'A',
		hometown       => '千葉県',
		emoticon       => ['（　｀.∀´）'],
		class          => 2,
		graduate_date  => Date::Simple->new('2003-05-05'),
	);
}

1;
