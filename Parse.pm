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
	my ($self, $xml_data) = @_;
	my $xml_hr = XMLin($xml_data);
	return $xml_hr;
}

1;

__END__
