package Nagios::Plugin;

use strict;
use warnings;
our @ISA = "Monitoring::Plugin";

our $VERSION = "0.37";

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

This library is free software; you can redistribute it and/or modify it
under the same terms as Perl itself, either Perl version 5.8.4 or, at your
option, any later version of Perl 5 you may have available.

=cut
