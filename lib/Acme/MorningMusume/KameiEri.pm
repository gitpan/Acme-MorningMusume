# $Id: KameiEri.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::KameiEri;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => '絵里',
		family_name    => '亀井',
		pronunciation  => 'Kamei Eri',
		nick           => [qw(えりりん)],
		birthday       => Date::Simple->new('1988-12-23'),
		blood_type     => 'AB',
		hometown       => '東京都',
		emoticon       => ['ﾉﾉ*＾ｰ＾)'],
		class          => 6,
		graduate_date  => undef,
	);
}

1;
