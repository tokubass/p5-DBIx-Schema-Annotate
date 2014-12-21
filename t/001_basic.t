use strict;
use Test::More;
use DBIx::Schema::Annotate;
use t::Utils;
use IO::All;
my $dbh = t::Utils->setup_dbh;
my $sql1 =<<END;
CREATE TABLE mock_basic (
  id   integer,
  name text,
  primary key ( id )
)
END
chomp($sql1);

my $sql2 =<<END;
CREATE TABLE mock_basic2 (
  id   integer,
  name2 text,
  primary key ( id )
)
END
chomp($sql2);

$dbh->do($sql1);
$dbh->do($sql2);

my $annotate = DBIx::Schema::Annotate->new( dbh => $dbh );
is($sql1, $annotate->get_table_ddl( table_name => 'mock_basic' ));


done_testing;

