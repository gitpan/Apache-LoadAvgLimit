print "1..1\n";

use Apache::LoadAvgLimit::GetAvg;

my @avg = Apache::LoadAvgLimit::GetAvg::get_loadavg()
        or die q/Cannot get load averages./;

my $flag = 0;
for my $i(1..3){
#       print $avg[($i-1)], "\n";
        $flag++ if $avg[($i-1)] !~ /^[\d\.]{4,}$/ 
}

print "not " if $flag;
print "ok 1\n";
