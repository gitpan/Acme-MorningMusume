# $Id: YoshizawaHitomi.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::YoshizawaHitomi;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => 'ひとみ',
		family_name    => '吉澤',
		pronunciation  => 'YoshizawaHitomi',
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
