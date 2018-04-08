#!/usr/bin/perl -w

use strict;             # restrict unsafe constructs

use Test::More tests => 3;

BEGIN {
    use_ok('bignum');
    use_ok('bigint');
    use_ok('bigrat');
};

diag("Testing bignum $bignum::VERSION");
diag("==> Perl $], $^X");
