# $Id: NakazawaYuko.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::NakazawaYuko;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => '裕子',
		family_name    => '中澤',
		pronunciation  => 'Nakazawa Yuko',
		nick           => [qw(姐さん)],
		birthday       => Date::Simple->new('1973-06-19'),
		blood_type     => 'O',
		hometown       => '京都府',
		emoticon       => ['从´∀｀从', '从#~∀~#从'],
		class          => 1,
		graduate_date  => Date::Simple->new('2001-04-15'),
	);
}

1;
