# $Id: AbeNatsumi.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::AbeNatsumi;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => 'なつみ',
		family_name    => '安部',
		pronunciation  => 'Abe Natsumi',
		nick           => [qw(なっち)],
		birthday       => Date::Simple->new('1981-08-10'),
		blood_type     => 'A',
		hometown       => '北海道',
		emoticon       => ['（●´ー｀●）'],
		class          => 1,
		graduate_date  => Date::Simple->new('2004-01-25'),
	);
}

1;
