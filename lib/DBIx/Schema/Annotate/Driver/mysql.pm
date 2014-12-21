package DBIx::Schema::Annotate::Driver::mysql;
use parent 'DBIx::Schema::Annotate::Driver::Base';
use Smart::Args;

sub table_ddl {
    args(
        my $self,
        my $table_name => 'Str',
    );

    my $row = $self->{dbh}->selectrow_hashref(qq!SHOW CREATE TABLE $table_name!);
    return $row->{'create table'};
}


1;

