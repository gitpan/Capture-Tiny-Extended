# Copyright (c) 2009 by David Golden. All rights reserved.
# Licensed under Apache License, Version 2.0 (the "License").
# You may not use this file except in compliance with the License.
# A copy of the License was distributed with this file or you may obtain a 
# copy of the License from http://www.apache.org/licenses/LICENSE-2.0

use strict;
use warnings;
use Test::More;
use lib 't/lib';
use Utils qw/next_fd sig_num/;
use Capture::Tiny::Extended qw/capture/;
use Config;

plan tests => 2;

my $builder = Test::More->builder;
binmode($builder->failure_output, ':utf8') if $] >= 5.008;

my $fd = next_fd;

capture {
  $? = 42;
};
is( $?, 42, "\$\? preserved after capture ends" );

is( next_fd, $fd, "no file descriptors leaked" );

exit 0;

