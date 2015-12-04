# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'METS parse class.';
author 'Michal Spacek <skim@cpan.org>';
author_requires 'Cwd' => 0;
author_requires 'English' => 0;
author_requires 'File::Spec::Functions' => 0;
author_requires 'FindBin' => 0;
author_requires 'Test::Pod' => 0;
author_requires 'Test::Pod::Coverage' => 0;
license 'bsd';
name 'METS-Parse';
readme_from 'Parse.pm';
recursive_author_tests('xt');
requires 'Class::Utils' => 0.03;
requires 'XML::Simple' => 0;
requires 'perl' => '5.6.0';
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=METS-Parse';
resources 'homepage' => 'https://github.com/tupinek/METS-Parse';
resources 'repository' => 'git://github.com/tupinek/METS-Parse';
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
tests_recursive;
version '0.01';

# Run.
WriteAll();
