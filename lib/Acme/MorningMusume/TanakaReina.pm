# $Id: TanakaReina.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::TanakaReina;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => 'れいな',
		family_name    => '田中',
		pronunciation  => 'Tanaka Reina',
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
