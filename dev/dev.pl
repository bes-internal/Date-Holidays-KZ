#!perl

chdir 'dev';

# run carton and print out immediately
open CMD,'-|','carton' or die "install Carton";
while (defined($line=<CMD>)) { print $line; }
close CMD;

chdir "..";
if (!-l "local") { symlink("dev/local", "local") or die $@; }
if (!-l "cpanfile.snapshot") { symlink("dev/cpanfile.snapshot", "cpanfile.snapshot") or die $@; }

print "done\n";
