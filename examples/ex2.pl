#!/usr/bin/env perl

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