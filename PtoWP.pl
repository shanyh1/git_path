#!/usr/bin/perl
# write by huabo, 2009-11-20
use warnings;
use strict;
#open the svn passwd file
open (FILE, "passwd") or die ("Cannot open the passwd file!!!n");
#clear the apache passwd file
open (OUT_FILE, ">webpasswd") or die ("Cannot open the webpasswd file!!!n");
close (OUT_FILE);
#begin
foreach (<FILE>) {
if($_ =~ m/^[^#].*=/) {
$_ =~ s/=//;
`htpasswd -b webpasswd $_`;
}
}

#Git is a distributed version control system.
#Git is free software distributed under the GPL.
#Git is a distributed version control system.
#Git is free software distributed under the GPL.
#Git has a mutable index called stage.
#Git tracks changes of files.
#My stupid boss still prefers SVN.
