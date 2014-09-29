package Nagios::Plugin::Functions;

use strict;
use warnings;
use base 'Monitoring::Plugin::Functions';

# Remember to update Nagios::Plugins as well
our $VERSION = "0.37";

BEGIN {
    warnings::warnif("deprecated", "Nagios::Plugin is deprecated, use Monitoring::Plugin instead.")
        unless $Monitoring::Plugin::deprecated_warned;
    $Monitoring::Plugin::deprecated_warned = 1;
};

our @STATUS_CODES = qw(OK WARNING CRITICAL UNKNOWN DEPENDENT);

#require Exporter;
our @ISA = qw(Exporter);
our @EXPORT = (@STATUS_CODES, qw(nagios_exit nagios_die check_messages));
our @EXPORT_OK = qw(%ERRORS %STATUS_TEXT @STATUS_CODES get_shortname max_state max_state_alt convert $value_re);
our %EXPORT_TAGS = (
    all => [ @EXPORT, @EXPORT_OK ],
    codes => [ @STATUS_CODES ],
    functions => [ qw(nagios_exit nagios_die check_messages max_state max_state_alt convert) ],
);

use constant OK         => 0;
use constant WARNING    => 1;
use constant CRITICAL   => 2;
use constant UNKNOWN    => 3;
use constant DEPENDENT  => 4;

our %ERRORS = (
    'OK'        => OK,
    'WARNING'   => WARNING,
    'CRITICAL'  => CRITICAL,
    'UNKNOWN'   => UNKNOWN,
    'DEPENDENT' => DEPENDENT,
);

our %STATUS_TEXT = reverse %ERRORS;

my $value = qr/[-+]?[\d\.]+/;
our $value_re = qr/$value(?:e$value)?/;

sub _fake_exit      { return(Monitoring::Plugin::Functions::_fake_exit(@_)); };
sub _use_die        { return(Monitoring::Plugin::Functions::_use_die(@_)); };
sub nagios_exit     { return(Monitoring::Plugin::Functions::plugin_exit(@_)); }
sub _nagios_exit    { return(Monitoring::Plugin::Functions::_plugin_exit(@_)); }
sub nagios_die      { return(Monitoring::Plugin::Functions::plugin_die(@_)); }
sub get_shortname   { return(Monitoring::Plugin::Functions::get_shortname(@_)); }
sub max_state_alt   { return(Monitoring::Plugin::Functions::max_state_alt(@_)); }
sub max_state       { return(Monitoring::Plugin::Functions::max_state(@_)); }
sub check_messages  { return(Monitoring::Plugin::Functions::check_messages(@_)); }
sub convert         { return(Monitoring::Plugin::Functions::convert(@_)); }
sub die { Monitoring::Plugin::Functions::plugin_die(@_); }

1;

__END__

=head1 NAME

Nagios::Plugin::Functions - functions to simplify the creation of
Nagios plugins

=head1 DEPRECATED

This module is *deprecated* in favour of C<Monitoring::Plugin>.
Read more about why this project had to change its name:
https://www.monitoring-plugins.org/news/new-project-name.html

=head1 AUTHOR

Maintained by the Monitoring Plugin development team -
https://www.monitoring-plugins.org/

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2006-2014 by Monitoring Plugin Development Team

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
