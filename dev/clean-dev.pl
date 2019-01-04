#!perl
if (-e "dev/cpanfile.snapshot") {unlink "dev/cpanfile.snapshot" or die $@;}
if (-l "local") {unlink "local" or die $@;}
if (-l "cpanfile.snapshot") {unlink "cpanfile.snapshot" or die $@;}

print "done\n";
