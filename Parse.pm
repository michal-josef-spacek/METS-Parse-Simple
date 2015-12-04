package METS::Parse;

# Pragmas.
use strict;
use warnings;

# Modules.
use Class::Utils qw(set_params);
use XML::Simple;

# Version.
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

METS::Parse - Class for METS parsing.

=head1 SYNOPSIS

 use METS::Parse;
 my $obj = METS::Parse->new;
 my $mets_hr = $obj->parse($mets_data);

=head1 METHODS

=over 8

=item C<new()>

 Constructor.

=item C<parse($mets_data)>

 Parse XML data via XML::Simple::XMLin().
 Returns hash reference to structure.

=back

=head1 ERRORS

 new():
         From Class::Utils::set_params():
                 Unknown parameter '%s'.

=head1 EXAMPLE

 # Pragmas.
 use strict;
 use warnings;

 # Modules.
 use Data::Printer;
 use METS::Parse;

 # Example METS data.
 my $mets_data <<'END';
 TODO
 END

 # Object.
 my $obj = METS::Parse->new;

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

L<https://github.com/tupinek/METS-Parse>

=head1 AUTHOR

Michal Špaček L<mailto:skim@cpan.org>

L<http://skim.cz>

=head1 LICENSE AND COPYRIGHT

 © Michal Špaček 2015
 BSD 2-Clause License

=head1 VERSION

0.01

=cut
