#!/usr/bin/env perl
use utf8;
use feature 'unicode_strings';
use open ':encoding(UTF-8)';
use open ':std', ':encoding(UTF-8)';

open(M, "modlist.src") || die "No modlist.src\n";
# Read module params
while (<M>) {
    next if /^\b*#/;
    chop;
    my ($name, $len) = split;
    $name = uc $name;
    $name =~ tr/ABEKMHOPCTYX/АВЕКМНОРСТУХ/;
    $lens{$name} = $len;
}
close(M);
@m = keys %lens;
# Now read all listings finding module length reports
while (<*.lst>) {
    open(F, $_) || die "Cannot open $_\n";
    while (<F>) {
        next unless /^МОДУЛЬ/;
	@l = split;
	$name = $l[1];
	$len = oct($l[8])-oct($l[6])+1;
	die "Module name $name matches nothing\n" if !defined($lens{$name});
	$allot = $lens{$name};
	print "\033[1;31mModule $name\tneeds $len zones, $allot given\033[22;39m\n" if $allot < $len;
	print "\033[1;34mModule $name\tneeds $len zones, $allot given\033[22;39m\n" if $allot > $len;
    }
}
