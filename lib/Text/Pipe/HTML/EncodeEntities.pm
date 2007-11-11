package Text::Pipe::HTML::EncodeEntities;

use strict;
use warnings;
use HTML::Entities;


our $VERSION = '0.01';


use base qw(Text::Pipe::Base);


sub filter_single {
    my ($self, $input) = @_;
    encode_entities($input);
    $input;
}


1;


__END__



=head1 NAME

Text::Pipe::HTML::EncodeEntities - Text pipe that can encode HTML entitites

=head1 SYNOPSIS

    my $pipe = Text::Pipe->new('HTML:EnccodeEntities');
    my $result = $pipe->filter(...);

=head1 DESCRIPTION

Text::Pipe::HTML::EncodeEntities inherits from L<Text::Pipe::Base>.

Methods inherited from L<Text::Pipe::Base>:

     new()

=head1 METHODS

=over 4



=item filter_single

Takes a single string, encodes it with HTML entities, and returns it.

=back

=head1 TAGS

If you talk about this module in blogs, on del.icio.us or anywhere else,
please use the C<textpipehtml> tag.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to
C<<bug-text-pipe-html@rt.cpan.org>>, or through the web interface at
L<http://rt.cpan.org>.

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit <http://www.perl.com/CPAN/> to find a CPAN
site near you. Or see <http://www.perl.com/CPAN/authors/id/M/MA/MARCEL/>.

=head1 AUTHOR

Marcel GrE<uuml>nauer, C<< <marcel@cpan.org> >>

=head1 COPYRIGHT AND LICENSE

Copyright 2007 by Marcel GrE<uuml>nauer

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.


=cut

