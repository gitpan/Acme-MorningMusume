# $Id: KagoAi.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::KagoAi;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => '亜依',
		family_name    => '加護',
		pronunciation  => 'Kago Ai',
		nick           => [qw(あいぼん)],
		birthday       => Date::Simple->new('1988-02-07'),
		blood_type     => 'AB',
		hometown       => '奈良県',
		emoticon       => ['（ ‘д‘ ）'],
		class          => 4,
		graduate_date  => Date::Simple->new('2004-08-01'),
	);
}

1;
