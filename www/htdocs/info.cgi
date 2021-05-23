#!/usr/bin/perl
use strict;
my $title = "Perl Version";
 
print "Content-type: text/html\n\n";
print "<html><head><title>$title</title></head><body>";
 
print "<h2>$title</h2>\n";
print "Perl version : ".$];
 
print "</body></html>"