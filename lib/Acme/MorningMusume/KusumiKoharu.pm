# $Id: KusumiKoharu.pm 8 2005-09-04 02:44:38Z kentaro $

package Acme::MorningMusume::KusumiKoharu;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.02';

sub info {
	return (
		first_name_ja  => '小春',
		family_name_ja => '久住',
		first_name_en  => 'Koharu',
		family_name_en => 'Kusumi',
		nick           => [qw(こは くすみん くすこ)],
		birthday       => Date::Simple->new('1992-07-15'),
		blood_type     => 'A',
		hometown       => '新潟県',
		emoticon       => ['从б_бﾘ', 'ﾘo´ｩ｀ﾘ'],
		class          => 7,
		graduate_date  => undef,
	);
}

1;
