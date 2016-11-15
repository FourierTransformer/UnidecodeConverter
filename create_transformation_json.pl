#!/usr/bin/perl
use strict;
use warnings;

# import the things
use Text::Unidecode;
use utf8;
use JSON;

# hash to keep track of the unicode mappings
my %unicodeMappings = ();

# iterate over the 255 files
for ( $a = 0; $a < 256; $a = $a + 1 ) {
    # load up the file
    my $code = sprintf( "require Unidecode::x%02x; ", $a);
    eval($code);

    # create a giant mapping
    my $hex = sprintf("0x%02x", $a);
    $unicodeMappings{$hex} = $Text::Unidecode::Char[$a]
}

# export the mapping to json
my $json = JSON->new;
my $output = $json->pretty->encode( \%unicodeMappings );

# write out the file as 'transform.json'
my $filename = 'transform.json';
open(my $fh, '>', $filename) or die "Could not open file '$filename' $!";
print $fh $output;
close $fh;

