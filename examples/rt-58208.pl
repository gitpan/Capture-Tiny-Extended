#
# This file is part of Capture-Tiny-Extended
#
# This software is Copyright (c) 2009 by Christian Walde.
#
# This is free software, licensed under:
#
#   The Apache License, Version 2.0, January 2004
#
use Capture::Tiny::Extended qw[ capture ];

my ( $out, $err ) =
 eval { capture { print STDERR "hello\n"; print STDOUT "there\n"; die("foo\n" ) } };

print STDERR "STDERR:\nout=$out\nerr=$err\n\$@=$@";
print STDOUT "STDOUT:\nout=$out\nerr=$err\n\$@=$@";

open FILE, '>ttt.log' or die( "error opening logfile\n" );
print FILE "FILE:\nout=$out\nerr=$err\n\$@=$@\n";
close FILE;
