# $Id: MorningMusume.pm 12 2005-04-03 13:02:32Z kentaro $

package Acme::MorningMusume;

use strict;
use warnings;

use Carp qw(croak);

our $VERSION = '0.01';

my @members = qw(
	FukudaAsuka
	NakazawaYuko
	IidaKaori
	AbeNatsumi
	IshiguroAya
	IchiiSayaka
	YaguchiMari
	YasudaKei
	GotohMaki
	IshikawaRika
	YoshizawaHitomi
	TsujiNozomi
	KagoAi
	TakahashiAi
	KonnoAsami
	OgawaMakoto
	NiigakiRisa
	KameiEri
	TanakaReina
	MichishigeSayumi
	FujimotoMiki
);

sub new {
	my $class = shift;
	my $self  = bless {members => []}, $class;

	$self->_initialize;

	return $self;
}

sub members {
	my ($self, $type, @members) = @_;
	@members = @{$self->{members}} unless @members;

	return @members unless $type;

	if ($type eq 'active') {
		return grep {!$_->graduate_date} @members;
	} elsif ($type eq 'graduate') {
		return grep {$_->graduate_date}  @members;
	}
}

sub sort {
	my ($self, $type, $order, @members) = @_;
	@members = $self->members unless @members;

	# order by desc if $order is true
	if ($order) {
		return sort {$b->$type <=> $a->$type} @members;
	} else {
		return sort {$a->$type <=> $b->$type} @members;
	}
}

sub select {
	my ($self, $type, $number, $operator, @members) = @_;

	$self->_die('invalid operator was passed in')
		unless grep {$operator eq $_} qw(== >= <= > <);

	@members = $self->members unless @members;
	my $compare = eval "(sub { \$number $operator \$_[0] })";

	return grep { $compare->($_->$type) } @members;
}

sub _initialize {
	my $self = shift;

	for my $member (@members) {
		my $module_name = 'Acme::MorningMusume::'.$member;

		eval qq|require $module_name;|;
		push @{$self->{members}}, $module_name->new;
	}

	return 1;
}

sub _die {
	my ($self, $message) = @_;
	Carp::croak($message);
}

1;

__END__

=head1 NAME

Acme::MorningMusume - All about the Japanese pop star "Morning Musume"

=head1 SYNOPSIS

  use Acme::MorningMusume;

  my $musume = Acme::MorningMusume->new;

  # retrieve the members on their activities
  my @members           = $musume->members;            # retrieve all
  my @active_members    = $musume->members('active');
  my @graduate_members  = $musume->members('graduate');

  # retrieve the members under some conditions
  my @sorted_by_age     = $musume->sort('age', 1);
  my @sorted_by_class   = $musume->sort('class', 1);
  my @selected_by_age   = $musume->select('age', 18, '>=');
  my @selected_by_class = $musume->select('class', 5, '==');

=head1 DESCRIPTION

"Morning Musume" is a one of the most famous Japanese pop star consisting of many pretty girls, and known as a group in which group member changes one after another so frequently that people cannot completely tell who is who in the group. Acme::MorningMusume provides an easy method to catch up with Morning Musume.

=head1 METHODS

=head2 new

=over 4

  my $musume = Acme::MorningMusume->new;

Creates and returns a new Acme::MorningMusume object.

=back

=head2 members ( $type )

=over 4

  # $type can be a one of the values below:
  #  + active   :  active members
  #  + graduate :  graduate members
  #  + undef    :  all members

  my @members = $musume->members('active');

Returns the members as a list of the L<Acme::MorningMusume::Base> based object represents each member. See also the documentation of L<Acme::MorningMusume::Base> for more details.

=back

=head2 sort ( $type, $order [ , @members ] )

=over 4

  # $type can be a one of the values below:
  #  + age   :  sort by age
  #  + class :  sort by class
  #
  # $order can be a one of the values below:
  #  + something true value  :  sort in ascending order
  #  + something false value :  sort in descending order

  my @sorted_members = $musume->sort('age', 1); # sort by age in ascending order

Returns the members sorted by the I<$type> field.

=back

=head2 select ( $type, $number, $operator [, @members] )

=over 4

  # $type can be a one of the same values above:
  my @selected_members = $musume->select('age', 18, '>=');

Returns the members satisfy the given I<$type> condition. I<$operator> must be a one of '==', '>=', '<=', '>', and '<'. This method compares the given I<$type> to the member's one in the order below:

  $type $operator $member_type

=back

=head1 SEE ALSO

=over 4

=item * MORNING MUSUME -Hello! Project-

L<http://www.helloproject.com/>

=item * L<Acme::MorningMusume::Base>

=back

=head1 AUTHOR

Kentaro Kuribayashi, E<lt>kentarok@gmail.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2005 by Kentaro Kuribayashi

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
