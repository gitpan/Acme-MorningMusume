# $Id: IshikawaRika.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::IshikawaRika;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.02';

sub info {
	return (
		first_name_ja  => '梨華',
		family_name_ja => '石川',
		first_name_en  => 'Rika',
		family_name_en => 'Ishikawa',
		nick           => [qw(りかっち チャーミー)],
		birthday       => Date::Simple->new('1985-01-19'),
		blood_type     => 'A',
		hometown       => '神奈川県',
		emoticon       => ['（ ＾▽＾）'],
		class          => 4,
		graduate_date  => undef,
	);
}

1;
