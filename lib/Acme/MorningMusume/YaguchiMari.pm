# $Id: YaguchiMari.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::YaguchiMari;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.02';

sub info {
	return (
		first_name_ja  => '真里',
		family_name_ja => '矢口',
		first_name_en  => 'Mari',
		family_name_en => 'Yaguchi',
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
