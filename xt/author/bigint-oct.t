#!perl

use strict;
use warnings;

use Test::More tests => 253534;

use Algorithm::Combinatorics qw< variations >;

use bigint;

use Test::More;

my $elements = ['0', 'b', 'x', '1', '1', '_', '_', '9', 'z'];

for my $k (0 .. @$elements) {
    my $seen = {};
    for my $variation (variations($elements, $k)) {
        my $str = join "", @$variation;
        next if $seen -> {$str}++;
        print qq|#\n# oct("$str")\n#\n|;

        my $i;
        my @warnings;
        local $SIG{__WARN__} = sub {
            my $warning = shift;
            $warning =~ s/ at .*\z//s;
            $warnings[$i] = $warning;
        };

        $i = 0;
        my $want_val  = CORE::oct("$str");
        my $want_warn = $warnings[$i];

        $i = 1;
        my $got_val   = bigint::oct("$str");
        my $got_warn  = $warnings[$i];

        is($got_val,  $want_val,  qq|oct("$str") (output)|);

        # We warn about invalid characters when CORE::oct() doesn't, so
        # comparing the warnings won't work.
        #is($got_warn, $want_warn, qq|oct("$str") (warning)|);
    }
}
