# SUSE's openQA tests
#
# Copyright © 2009-2013 Bernhard M. Wiedemann
# Copyright © 2012-2016 SUSE LLC
#
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.  This file is offered as-is,
# without any warranty.

# Summary: Startup of rhythmbox
# Maintainer: Oliver Kurz <okurz@suse.de>

use base "x11test";
use strict;
use testapi;

sub run() {
    x11_start_program("rhythmbox");
    assert_screen 'test-rhythmbox-1';
    send_key "alt-f4";
    wait_idle;
}

1;
# vim: set sw=4 et:
