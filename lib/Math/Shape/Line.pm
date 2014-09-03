use strict;
use warnings;
package Math::Shape::Line;

use 5.008;
use Carp;
use Math::Shape::Vector;

# ABSTRACT: a 2d vector line object

=head1 METHODS

=head2 new

Constructor, requires 4 values: the x,y values for the base and direction vectors.

    my $line = Math::Shape::Line->new(1, 2, 3, 4);

=cut

sub new {
    croak 'incorrect number of args' unless @_ == 5;
    my ($class, $x1, $y1, $x2, $y2) = @_;
    bless { base        => Math::Shape::Vector->new($x1, $y1),
            direction   => Math::Shape::Vector->new($x2, $y2),
          }, $class;
}

1;
