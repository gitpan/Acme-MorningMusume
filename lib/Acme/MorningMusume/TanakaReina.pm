# $Id: TanakaReina.pm 2 2005-09-03 22:17:32Z kentaro $

package Acme::MorningMusume::TanakaReina;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.02';

sub info {
	return (
		first_name_ja  => 'れいな',
		family_name_ja => '田中',
		first_name_en  => 'Reina',
		family_name_en => 'Tanaka',
		nick           => [qw(れいにゃ)],
		birthday       => Date::Simple->new('1989-11-11'),
		blood_type     => 'O',
		hometown       => '福岡県',
		emoticon       => ['从 ´ ヮ｀)', '从 `,_っ´)'],
		class          => 6,
		graduate_date  => undef,
	);
}

1;
