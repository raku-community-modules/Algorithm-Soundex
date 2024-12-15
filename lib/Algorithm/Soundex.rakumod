class Algorithm::Soundex {

    method soundex ($string --> Str ) {
        return '' unless $string;
        my $soundex = $string.substr(0,1).uc;
        gather {
                take $soundex;
                my $fakefirst = '';
                $fakefirst = "de " if $soundex ~~ /^ <[AEIOUWH]> /;
                "$fakefirst$string".lc.trans('wh' => '') ~~ /
                    ^
                    [
                        [
                        | <[ bfpv     ]>+ { take 1 }
                        | <[ cgjkqsxz ]>+ { take 2 }
                        | <[ dt       ]>+ { take 3 }
                        | <[ l        ]>+ { take 4 }
                        | <[ mn       ]>+ { take 5 }
                        | <[ r        ]>+ { take 6 }
                        ]
                    || .
                    ]+
                    $ { take 0,0,0 }
                /;
            }.flat.[0,2,3,4].join
    }
}

=begin pod

=head1 NAME

Algorithm::Soundex - Soundex algorithms in Raku

=head1 DESCRIPTION

Currently this module contains the American Soundex algorithm,
implemented in Raku

If you would like to add other Soundex algorithms, Patches Welcome!

=head1 SYNOPSIS

=begin code :lang<raku>

use Algorithm::Soundex;

my Algorithm::Soundex $s .= new;
my $soundex               = $s.soundex("Leto");
say "The soundex of Leto is $soundex";

=end code

=head1 AUTHOR

Jonathan Leto

=head1 COPYRIGHT AND LICENSE

Copyright 2011 - 2017 Jonathan Leto

Copyright 2024 Raku Community

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
