use 5.006;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME           => 'Nagios::Plugin',
    VERSION_FROM   => 'lib/Nagios/Plugin.pm',
    ABSTRACT_FROM  => 'lib/Nagios/Plugin.pm',
    AUTHOR         => 'Monitoring Plugin Development Team <team@monitoring-plugins.org>',
    PREREQ_PM         => {
        Monitoring::Plugin => 0,
        base               => 0,
        Test::More         => 0.62,
    },
);
