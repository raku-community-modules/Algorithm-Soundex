[![Actions Status](https://github.com/raku-community-modules/Algorithm-Soundex/actions/workflows/linux.yml/badge.svg)](https://github.com/raku-community-modules/Algorithm-Soundex/actions) [![Actions Status](https://github.com/raku-community-modules/Algorithm-Soundex/actions/workflows/macos.yml/badge.svg)](https://github.com/raku-community-modules/Algorithm-Soundex/actions) [![Actions Status](https://github.com/raku-community-modules/Algorithm-Soundex/actions/workflows/windows.yml/badge.svg)](https://github.com/raku-community-modules/Algorithm-Soundex/actions)

NAME
====

Algorithm::Soundex - Soundex algorithms in Raku

DESCRIPTION
===========

Currently this module contains the American Soundex algorithm, implemented in Raku

If you would like to add other Soundex algorithms, Patches Welcome!

SYNOPSIS
========

```raku
use Algorithm::Soundex;

my Algorithm::Soundex $s .= new;
my $soundex               = $s.soundex("Leto");
say "The soundex of Leto is $soundex";
```

AUTHOR
======

Jonathan Leto

COPYRIGHT AND LICENSE
=====================

Copyright 2011 - 2017 Jonathan Leto

Copyright 2024 Raku Community

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

