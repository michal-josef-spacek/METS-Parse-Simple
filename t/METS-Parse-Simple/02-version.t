# Pragmas.
use strict;
use warnings;

# Modules.
use METS::Parse::Simple;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($METS::Parse::Simple::VERSION, 0.01, 'Version.');
