# $Id: TakahashiAi.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::TakahashiAi;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => '愛',
		family_name    => '高橋',
		pronunciation  => 'Takahashi Ai',
		nick           => [qw(愛ちゅん)],
		birthday       => Date::Simple->new('1986-09-14'),
		blood_type     => 'A',
		hometown       => '福井県',
		emoticon       => ['川’ー’川'],
		class          => 5,
		graduate_date  => undef,
	);
}

1;
