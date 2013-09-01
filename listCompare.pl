#!/bin/perl

$len = $#ARGV + 1;

if ($len < 2) {
    print "usage: file1 file2\n";
	exit;
}

my %list;

open (FILE1, $ARGV[0]);
open (FILE2, $ARGV[1]);

print "domain\tIn $ARGV[0]\tIn $ARGV[1]\n";

while (<FILE2>) {
   chomp;
   $list{lc($_)} = 1;
}

while (<FILE1>)
{
   chomp;
	if ($list{lc($_)} == null) {
      print "$_\ttrue\tfalse\n";
   } else {
      $list{lc($_)} = 2;
      print "$_\ttrue\ttrue\n";
   }
}

foreach (keys(%list))
{
   if ($list{lc($_)} == "1") {
      print "$_\tfalse\ttrue\n";
   }
}
close (FILE1);
close (FILE2);
