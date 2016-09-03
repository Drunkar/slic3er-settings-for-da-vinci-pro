#!/usr/bin/perl -i
use strict;
use warnings;

my $is_after_cleaning = 0;
my $is_print_started = 0;
my $first_z_position = undef;
my $pre_print_z_position = "G1 Z10.000\n";
while (<>) {
    if ($_ =~ /^M100/) {
        $is_after_cleaning = 1;
    }

    if ($is_print_started or !$is_after_cleaning) {
        print;
        next;
    }

    # after cleaning and before print start -----------------------------------
    if ($_ =~ /^G1 Z/) {
        $first_z_position = $_;
        print $pre_print_z_position;
    } elsif ($_ =~ /^G1 X/) {
        print;
        print $first_z_position;
        $is_print_started = 1;
    } else {
        print;
    }
    # -------------------------------------------------------------------------
}
