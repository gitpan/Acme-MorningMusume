# $Id: FujimotoMiki.pm 10 2005-04-03 12:13:44Z kentaro $

package Acme::MorningMusume::FujimotoMiki;

use strict;
use warnings;

use base qw(Acme::MorningMusume::Base);

our $VERSION = '0.01';

sub info {
	return (
		first_name     => '美貴',
		family_name    => '藤本',
		pronunciation  => 'Fujimoto Miki',
		nick           => [qw(ミキティ 美貴帝 美貴様)],
		birthday       => Date::Simple->new('1985-02-26'),
		blood_type     => 'A',
		hometown       => '北海道',
		emoticon       => ['ゝ＇v＇丿'],
		class          => 6,
		graduate_date  => undef,
	);
}

1;
