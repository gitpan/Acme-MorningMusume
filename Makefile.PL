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
