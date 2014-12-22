# NAME

DBIx::Schema::Annotate - Add ddl infomation to ORM file. inspired by annotate\_models.

# SYNOPSIS

    use DBIx::Schema::Annotate;
    my $dbh = DBI->connect('....') or die $DBI::errstr;
    my $annotate = DBIx::Schema::Annotate->new( dbh => $dbh );
    $annotate->output(
      dir       => '...',
      exception_rule => {
        # todo
      }
    );

    # Amon2 + Teng
    $ carton exec -- perl -Ilib -MMyApp -MDBIx::Schema::Annotate -e 'my $c = MyApp->bootstrap; DBIx::Schema::Annotate->new( dbh => $c->db->{dbh})->write_files(dir => q!lib/MyApp/DB/Row/!)'

# DESCRIPTION

DBIx::Schema::Annotate is ...

# LICENSE

Copyright (C) tokubass.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

tokubass <tokubass@cpan.org>
