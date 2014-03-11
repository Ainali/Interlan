#!/usr/bin/perl
#
# $Id: logger.pl 170 2008-02-05 14:14:31Z jakob $

require 5.8.0;
use warnings;
use strict;

use Data::Dumper;

use DNSCheck::Logger;

######################################################################

my $logger = new DNSCheck::Logger;

$logger->add("level1", "tag1", 1, 2, 3);
$logger->add("level2", "tag2", 4, 5, 6);

my $log = $logger->export();

foreach my $line (@{$log}) {
    print Dumper($line);
    print "---\n";
}
