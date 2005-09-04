# $Id: Makefile.PL 2 2005-09-03 22:17:32Z kentaro $

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
