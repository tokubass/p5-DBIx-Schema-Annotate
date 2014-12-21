package DBIx::Schema::Annotate::Driver::SQLite;
use parent 'DBIx::Schema::Annotate::Driver::Base';
use Smart::Args;

sub table_ddl {
    args(
        my $self,
        my $table_name => 'Str',
    );

    my $row = $self->{dbh}->selectrow_hashref(qq!SELECT * FROM sqlite_master WHERE type='table' and name = '$table_name'!);
    return $row->{sql};
}


1;

