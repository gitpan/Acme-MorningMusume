# $Id: IshikawaRika.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::IshikawaRika;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => '梨華',
		family_name    => '石川',
		pronunciation  => 'Ishikawa Rika',
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
