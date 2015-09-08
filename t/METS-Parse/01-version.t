# Pragmas.
use strict;
use warnings;

# Modules.
use METS::Parse;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($METS::Parse::VERSION, 0.01, 'Version.');
