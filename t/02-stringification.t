use Test;
#use Test::Color sub { :ok("0,255,0 on_64,64,255") };
use Units <ft A>;

plan 2;

my $one = 1ft;
my $two = 2ft;

subtest 'basic tests', sub {
    plan 4;
    ok $one.Str ~~ "1 foot", "Stringifies ok (singular)";
    ok $two.Str ~~ "2 feet", "Stringifies ok (plural)";
    ok $one.gist ~~ "1e0ft", "Stringifies ok (singular)";
    ok $two.gist ~~ "2e0ft", "Stringifies ok (plural)";
};

subtest 'prefixes', sub {
  plan 1;
  $_ = 2000A;
  ok .Str('k') ~~ "2 kiloampere", ".Str(prefix) ok (2 kiloampere)" ;
};

done-testing;
