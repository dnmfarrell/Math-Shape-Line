use strict;
use warnings;
use Test::More;

BEGIN { use_ok 'Math::Shape::Line', 'import module' };

ok my $line = Math::Shape::Line->new(1,2,3,4), 'constructor';

done_testing();
