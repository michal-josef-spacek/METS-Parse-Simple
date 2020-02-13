package METS::Parse::Simple;

use strict;
use warnings;

use Class::Utils qw(set_params);
use XML::Simple;

our $VERSION = 0.01;

# Constructor.
sub new {
	my ($class, @params) = @_;

	# Create object.
	my $self = bless {}, $class;

	# Process parameters.
	set_params($self, @params);

	return $self;
}

# Parse XML data.
sub parse {
	my ($self, $mets_data) = @_;
	my $mets_hr = XMLin($mets_data);
	return $mets_hr;
}

1;

__END__

=pod

=encoding utf8

=head1 NAME

METS::Parse::Simple - Simple class for METS parsing.

=head1 SYNOPSIS

 use METS::Parse::Simple;

 my $obj = METS::Parse::Simple->new;
 my $mets_hr = $obj->parse($mets_data);

=head1 METHODS

=over 8

=item C<new()>

 Constructor.

=item C<parse($mets_data)>

 Parse METS XML data via XML::Simple::XMLin().
 Returns hash reference to structure.

=back

=head1 ERRORS

 new():
         From Class::Utils::set_params():
                 Unknown parameter '%s'.

=head1 EXAMPLE1

 use strict;
 use warnings;

 use Data::Printer;
 use METS::Parse::Simple;
 use Perl6::Slurp qw(slurp);

 if (@ARGV < 1) {
         print STDERR "Usage: $0 mets_file\n";
         exit 1;
 }
 my $mets_file = $ARGV[0];

 # Get mets data.
 my $mets_data = slurp($mets_file);

 # Object.
 my $obj = METS::Parse::Simple->new;

 # Parse data.
 my $mets_hr = $obj->parse($mets_data);

 # Dump to output.
 p $mets_hr;

 # Output without argument like:
 # Usage: __SCRIPT__ mets_file

=head1 EXAMPLE2

 use strict;
 use warnings;

 use Data::Printer;
 use METS::Parse::Simple;

 # Example METS data.
 my $mets_data <<'END';
 TODO
 END

 # Object.
 my $obj = METS::Parse::Simple->new;

 # Parse.
 my $mets_hr = $obj->parse($mets_data);

 # Dump to output.
 p $mets_hr;

 # Output like:
 # TODO

=head1 DEPENDENCIES

L<Class::Utils>,
L<XML::Simple>.

=head1 REPOSITORY

L<https://github.com/michal-josef-spacek/METS-Parse-Simple>

=head1 AUTHOR

Michal Josef Špaček L<mailto:skim@cpan.org>

L<http://skim.cz>

=head1 LICENSE AND COPYRIGHT

 © Michal Josef Špaček 2015-2020
 BSD 2-Clause License

=head1 VERSION

0.01

=cut
