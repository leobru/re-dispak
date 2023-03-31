#!/usr/bin/env perl
while (<>) {
    next if /^\b*#/;
    chop;
    my ($name, $len) = split;
    $lens{$name} = $len;
}
close(F);
$zone = 0;
print "# Generated - DO NOT EDIT\n"; 
map {
    printf("%s %04o %02o\n", $_, $zone, $lens{$_});
    $zone += $lens{$_};
} (sort keys %lens);
