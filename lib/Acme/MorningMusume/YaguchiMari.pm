# $Id: YaguchiMari.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::YaguchiMari;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => '真理',
		family_name    => '矢口',
		pronunciation  => 'Yaguchi Mari',
		nick           => [qw(まりっぺ やぐたん)],
		birthday       => Date::Simple->new('1983-01-20'),
		blood_type     => 'A',
		hometown       => '神奈川県',
		emoticon       => ['（～＾◇＾～）', '（～＾◇＾）'],
		class          => 2,
		graduate_date  => undef,
	);
}

1;
