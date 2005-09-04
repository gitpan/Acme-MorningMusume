# $Id: 01_members.t 8 2005-09-04 02:44:38Z kentaro $

use strict;
use Date::Simple;
use Acme::MorningMusume;
use Test::More tests => 4;

my $musume  = Acme::MorningMusume->new;

is scalar($musume->members),             22, "members(undef) retrieved all";
is scalar($musume->members('active')),   10, "  members('active')";
is scalar($musume->members('graduate')), 12, "  members('graduate')";
is scalar($musume->members(Date::Simple->new('2001-01-01'))), 10, "  members('date_simple_object')";
