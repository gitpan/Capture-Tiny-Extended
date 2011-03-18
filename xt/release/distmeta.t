#!perl
#
# This file is part of Capture-Tiny-Extended
#
# This software is Copyright (c) 2009 by Christian Walde.
#
# This is free software, licensed under:
#
#   The Apache License, Version 2.0, January 2004
#

use Test::More;

eval "use Test::CPAN::Meta";
plan skip_all => "Test::CPAN::Meta required for testing META.yml" if $@;
meta_yaml_ok();
