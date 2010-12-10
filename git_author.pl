#!/usr/bin/perl

use warnings;
use strict;

my $numArgs = $#ARGV + 1;

if ($numArgs != 1) {
    print "A parameter with user id was espected\n";
    exit;
}

open (FILE, 'authors.txt');
my $found = 0;
while (<FILE>) {
    my($line) = $_;
    chomp($line);

    if ($line =~ /(.*) = (.*).+\<(.*)\>$/)
    {
        my ($id, $user, $email) = ($1, $2, $3);

        if ( $id eq $ARGV[0] ) {
            print ("$user \<$email\>\n");
            $found = 1;
        }
    }
}
close (FILE);

print("unknown \<unknown\@unknown.com\>\n") unless ($found);

exit;
