package Nagios::Plugin::ExitResult;

use strict;
use warnings;
use base 'Monitoring::Plugin::ExitResult';

1;

__END__

=head1 NAME

Nagios::Plugin::ExitResult - Helper class for returning both output and
return codes when testing.

=head1 DEPRECATED

This module is *deprecated* in favour of C<Monitoring::Plugin>.
Read more about why this project had to change its name:
https://www.monitoring-plugins.org/news/new-project-name.html

=head1 AUTHOR

Maintained by the Monitoring Plugin development team -
https://www.monitoring-plugins.org/

Originally by Gavin Carr, E<lt>gavin@openfusion.com.auE<gt>.

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2006-2014 by Monitoring Plugin Development Team

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
