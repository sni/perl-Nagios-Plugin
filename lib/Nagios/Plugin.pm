package Nagios::Plugin;

use strict;
use warnings;
use Nagios::Plugin::Functions qw(:codes %ERRORS %STATUS_TEXT @STATUS_CODES);
use base 'Monitoring::Plugin';

use Exporter;
our @ISA = qw(Exporter);
our @EXPORT = (@STATUS_CODES);
our @EXPORT_OK = qw(%ERRORS %STATUS_TEXT);

# CPAN stupidly won't index this module without a literal $VERSION here,
#   so we're forced to duplicate it explicitly
# Make sure you update $Nagios::Plugin::Functions::VERSION too
our $VERSION = "0.37";

BEGIN {
    our $deprecated_warned = 0;
    warnings::warnif("deprecated", "Nagios::Plugin is deprecated, use Monitoring::Plugin instead.")
        unless $Monitoring::Plugin::deprecated_warned;
    $deprecated_warned = 1;
};

# MP::Functions wrappers
sub nagios_exit {
    my $self = shift;
    return(Nagios::Plugin::Functions::nagios_exit(@_, { plugin => $self }));
}
sub nagios_die {
    my $self = shift;
    return(Nagios::Plugin::Functions::nagios_die(@_, { plugin => $self }));
}
sub die {
    my $self = shift;
    return(Nagios::Plugin::Functions::nagios_die(@_, { plugin => $self }));
}
sub max_state {
    return(Monitoring::Plugin::Functions::max_state(@_));
}
sub max_state_alt {
    return(Monitoring::Plugin::Functions::max_state_alt(@_));
}
sub new {
    return(Monitoring::Plugin::new(@_));
}
sub shortname {
    return(Monitoring::Plugin::shortname(@_));
}
sub check_messages {
    return(Monitoring::Plugin::check_messages(@_));
}
sub set_thresholds {
    return(Monitoring::Plugin::set_thresholds(@_));
}
sub opts {
    return(Monitoring::Plugin::opts(@_));
}
sub threshold {
    return(Monitoring::Plugin::threshold(@_));
}
sub perfdata {
    return(Monitoring::Plugin::perfdata(@_));
}
sub messages {
    return(Monitoring::Plugin::messages(@_));
}
sub add_message {
    return(Monitoring::Plugin::add_message(@_));
}
sub add_perfdata {
    return(Monitoring::Plugin::add_perfdata(@_));
}
sub all_perfoutput {
    return(Monitoring::Plugin::all_perfoutput(@_));
}
sub add_arg {
    return(Monitoring::Plugin::add_arg(@_));
}
sub _check_for_opts {
    return(Monitoring::Plugin::_check_for_opts(@_));
}
sub getopts {
    return(Monitoring::Plugin::getopts(@_));
}
sub check_threshold {
    return(Monitoring::Plugin::check_threshold(@_));
}

1;

__END__

=head1 NAME

Nagios::Plugin - A family of perl modules to streamline writing Nagios
plugins

=head1 DEPRECATED

This module is *deprecated* in favour of C<Monitoring::Plugin>.
Read more about why this project had to change its name:
https://www.monitoring-plugins.org/news/new-project-name.html

=head1 AUTHOR

Maintained by the Monitoring Plugin development team -
https://www.monitoring-plugins.org/

Originally by Ton Voon, E<lt>ton.voon@altinity.comE<gt>.

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2006-2014 by Monitoring Plugin Development Team

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
