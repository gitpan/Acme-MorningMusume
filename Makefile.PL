# $Id: Makefile.PL 12 2005-04-03 13:02:32Z kentaro $

use ExtUtils::MakeMaker;

WriteMakefile(
	NAME              => 'Acme::MorningMusume',
	VERSION_FROM      => 'lib/Acme/MorningMusume.pm',
	PREREQ_PM         => {
		Class::Accessor     => 0,
		Date::Simple        => 0,
		WWW::Google::Images => '0.6.1',
	},
);
