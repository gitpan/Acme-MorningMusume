# $Id: YoshizawaHitomi.pm 2 2005-09-03 22:17:32Z kentaro $

package Acme::MorningMusume::YoshizawaHitomi;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.02';

sub info {
	return (
		first_name_ja  => 'ひとみ',
		family_name_ja => '吉澤',
		first_name_en  => 'Hitomi',
		family_name_en => 'Yoshizawa',
		nick           => [qw(よっすぃー)],
		birthday       => Date::Simple->new('1985-04-12'),
		blood_type     => 'O',
		hometown       => '埼玉県',
		emoticon       => ['（０＾～＾）'],
		class          => 4,
		graduate_date  => undef,
	);
}

1;
