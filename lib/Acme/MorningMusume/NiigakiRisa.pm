# $Id: NiigakiRisa.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::NiigakiRisa;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => '里沙',
		family_name    => '新垣',
		pronunciation  => 'Niigaki Risa',
		nick           => [qw(垣さん お豆ちゃん)],
		birthday       => Date::Simple->new('1988-10-20'),
		blood_type     => 'B',
		hometown       => '神奈川県',
		emoticon       => ['(・e・)', '（ё）'],
		class          => 5,
		graduate_date  => undef,
	);
}

1;
