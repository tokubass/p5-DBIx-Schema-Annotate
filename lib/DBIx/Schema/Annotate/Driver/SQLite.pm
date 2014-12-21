package DBIx::Schema::Annotate::Driver::SQLite;
use parent 'DBIx::Schema::Annotate::Driver::Base';
use Smart::Args;

sub table_ddl {
    args(
        my $self,
        my $table_name => 'Str',
    );

    my $sth = $self->{dbh}->prepare(q! SELECT * FROM sqlite_master WHERE type='table' and name = ? !);
    $sth->execute($table_name);

    my $row = $sth->fetchrow_hashref;
    return $row->{sql};
}


1;

