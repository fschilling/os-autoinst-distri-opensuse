# SLE12 online migration tests
#
# Copyright © 2016 SUSE LLC
#
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.  This file is offered as-is,
# without any warranty.

# Summary: Fully patch the system before conducting an online migration
# Maintainer: mitiao <mitiao@gmail.com>

use base "consoletest";
use strict;
use testapi;
use utils;
use migration;

sub run() {
    my ($self) = @_;
    select_console 'root-console';

    fully_patch_system;
    type_string "reboot\n";
    $self->setup_online_migration;
}

sub test_flags() {
    return {fatal => 1};
}

1;
# vim: set sw=4 et:
