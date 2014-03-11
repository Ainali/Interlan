#!/usr/bin/perl
#
# $Id: asn.pl 88 2007-11-30 12:42:35Z jakob $

require 5.8.0;
use warnings;
use strict;

use Data::Dumper;

use DNSCheck::Logger;
use DNSCheck::Lookup::DNS;
use DNSCheck::Lookup::ASN;

######################################################################

my $logger = new DNSCheck::Logger({ interactive => 1 });
my $dns    = new DNSCheck::Lookup::DNS($logger);
my $asn    = new DNSCheck::Lookup::ASN($logger, $dns);

die "syntax error" unless ($ARGV[0]);

$asn->lookup($ARGV[0]);
