
use strict;
require 5.006;

# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

# The name of your distribution
name		'bignum';

# Get most of the details from the primary module
all_from	'lib/bignum.pm';

requires	'perl'		=> "5.006";
requires	'Math::BigInt'	=> 1.87;
requires	'Math::BigRat'	=> 0.12;

build_requires	'Test::More'	=> 0.62;

license		'perl';

author		'Tels <nospam-abuse@bloodgate.com>';

# install this over the version in the Perl core
install_as_core;

sign;

# Generate the Makefile
WriteAll;
