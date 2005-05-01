# $Id: KusumiKoharu.pm 20 2005-05-01 14:24:19Z kentaro $

package Acme::MorningMusume::KusumiKoharu;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name_ja  => '小春',
		family_name_ja => '久住',
		first_name_en  => 'Koharu',
		family_name_en => 'Kusumi',
		nick           => [],
		birthday       => Date::Simple->new('1992-07-15'),
		blood_type     => 'unknown',
		hometown       => '新潟県',
		emoticon       => [],
		class          => 7,
		graduate_date  => undef,
	);
}

1;
