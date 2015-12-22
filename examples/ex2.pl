#!/usr/bin/env perl

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