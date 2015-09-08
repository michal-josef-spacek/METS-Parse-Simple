# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'METS parse class.';
author 'Michal Spacek <skim@cpan.org>';
license 'bsd';
name 'METS-Parse';
readme_from 'Parse.pm';
requires 'Class::Utils' => 0.03;
requires 'English' => 0;
requires 'Error::Pure' => 0.22;
requires 'Scalar::Util' => 0;
requires 'perl' => '5.6.0';
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=METS-Parse';
resources 'homepage' => 'https://github.com/tupinek/METS-Parse';
resources 'repository' => 'git://github.com/tupinek/METS-Parse';
test_requires 'English' => 0;
test_requires 'File::Object' => 0.05;
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.01';

# Run.
WriteAll();
