# $Id: IshiguroAya.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::IshiguroAya;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => '彩',
		family_name    => '石黒',
		pronunciation  => 'Ishiguro Aya',
		nick           => [qw(あやっぺ)],
		birthday       => Date::Simple->new('1978-05-12'),
		blood_type     => 'A',
		hometown       => '北海道',
		emoticon       => ['（ ` ･ゝ´）'],
		class          => 1,
		graduate_date  => Date::Simple->new('2000-01-07'),
	);
}

1;
