# $Id: TsujiNozomi.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::TsujiNozomi;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => '希美',
		family_name    => '辻',
		pronunciation  => 'Tsuji Nozomi',
		nick           => [qw(のの ののたん)],
		birthday       => Date::Simple->new('1987-06-17'),
		blood_type     => 'O',
		hometown       => '東京都',
		emoticon       => ['（ ´ⅴ｀）'],
		class          => 4,
		graduate_date  => Date::Simple->new('2004-08-01'),
	);
}

1;
