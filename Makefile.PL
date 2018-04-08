#!perl

use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile
  (
   'NAME'               => 'bignum',
   'VERSION_FROM'       => 'lib/bignum.pm',
   'AUTHOR'             => 'Peter John Acklam <pjacklam@gmail.com>',
   'MIN_PERL_VERSION'   => 5.006,
   'PREREQ_PM'          => {
                            #'ExtUtils::MakeMaker' => 6.58,
                            'Test::More'          => 0.47,
                            'Math::BigInt'        => 1.999718,
                            'Math::BigRat'        => 0.12,
                           },
   'LICENSE'            => 'perl_5',
   'LIBS'               => [''],        # e.g., '-lm'
   'DEFINE'             => '',          # e.g., '-DHAVE_SOMETHING'
   'INC'                => '',          # e.g., '-I/usr/include/other'
   'SIGN'               => 1,
  );
