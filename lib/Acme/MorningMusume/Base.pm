# $Id: Base.pm 12 2005-04-03 13:02:32Z kentaro $

package Acme::MorningMusume::Base;

use strict;
use warnings;

use Date::Simple ();

use base qw(Class::Accessor);

our $VERSION = '0.01';

__PACKAGE__->mk_accessors(qw(
	first_name
	family_name
	pronunciation
	nick
	birthday
	age
	blood_type
	hometown
	emoticon
	class
	graduate_date
));

sub new {
	my $class = shift;
	my $self  = bless {}, $class;

	$self->_initialize;

	return $self;
}

sub images {
	my ($self, %arg) = @_;
	return $self->{_ua}->search($self->family_name.$self->first_name, %arg);
}

sub _initialize {
	my $self = shift;
	my %info = $self->info;

	$self->{$_}  = $info{$_} for keys %info;
	$self->{age} = $self->_calculate_age;
	$self->{_ua} = WWW::Google::Images::Ja->new(
		server => 'images.google.co.jp'
    );

	return 1;
}

sub _calculate_age {
	my $self  = shift;
	my $today = Date::Simple::today;

	if (($today->month - $self->birthday->month) >= 0) {
		if (($today->day - $self->birthday->day  ) >= 0) {
			return $today->year - $self->birthday->year;
		} else {
			return ($today->year - $self->birthday->year) - 1;
		}
	} else {
		return ($today->year - $self->birthday->year) - 1;
	}
}

# wrapper for WWW::Google::Images to adjust a utf-8 encoded query
package WWW::Google::Images::Ja;

use base qw(WWW::Google::Images);

sub search {
	my ($self, $query, %arg) = @_;

	$arg{limit} = 10 unless defined $arg{limit};
	$self->{_agent}->get($self->{_server});
	$self->{_agent}->submit_form(
		form_number => 1,
		fields      => {
			ie => 'UTF-8',
			hl => 'ja',
			q  => $query,
		}
	);

	my @images;
	my $page = 1;

	LOOP: {
		do {
			push(@images, $self->_extract_images(($arg{limit} ? $arg{limit} - @images : 0), %arg));
			last if $arg{limit} && @images == $arg{limit};
		} while ($self->_next_page(++$page));
	}

	return WWW::Google::Images::SearchResult->new($self->{_agent}, @images);
}

1;

__END__

=head1 NAME

Acme::MorningMusume::Base - A baseclass represents a member of Morning Musume

=head1 SYNOPSIS

  use Acme::MorningMusume;

  my $musume = Acme::MorningMusume->new;

  # retrieve the members as a list of
  # Acme::MorningMusume::Base based objects
  my @members = $musume->members;

  for my $member (@member) {
      my $first_name    = $member->first_name;
      my $family_name   = $member->family_name;
      my $pronunciation = $member->pronunciation;
      my $nick          = $member->nick;          # arrayref
      my $birthday      = $member->birthday;      # Date::Simple object
      my $age           = $member->age;
      my $blood_type    = $member->blood_type;
      my $hometown      = $member->hometown;
      my $emoticon      = $member->emoticon;      # arrayref
      my $class         = $member->class;
      my $graduate_date = $member->graduate_date; # Date::Simple object

      my $images = $member->images(limit => 5);
      while (my $image = $images->next) {
          $count++;
          my $content_url = $image->content_url;
          my $context_url = $image->context_url;
          $image->save_content(base => 'image' . $count);
          $image->save_context(base => 'page'  . $count);
      }
  }

=head1 DESCRIPTION

Acme::MorningMusume::Base is a baseclass of the class represents each members.

=head1 METHODS

=head2 images ( [ %arg ] )

=over 4

  # %arg can be passed in the same as the WWW::Google::Image:search method
  my $images = $member->images(limit => 5);

Performs a search for I<$member>'s name using Google, and returns a L<WWW::Google::Images::SearchResult> object. See the documentation of L<WWW::Google::Images> for details.

=back

=head1 ACCESSORS

=head2 first_name

=head2 family_name

=head2 pronunciation

=head2 nick

=head2 birthday

=head2 age

=head2 blood_type

=head2 hometown

=head2 emoticon

=head2 class

=head2 graduate_date

=head1 SEE ALSO

=over 4

=item * L<Date::Simple>

=item * L<WWW::Google::Images>

=back

=head1 AUTHOR

Kentaro Kuribayashi, E<lt>kentarok@gmail.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2005 by Kentaro Kuribayashi

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut