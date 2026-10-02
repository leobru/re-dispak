#!/usr/bin/env perl
use utf8;
use feature 'unicode_strings';
use open ':std', ':encoding(UTF-8)';

while (<>) {
    $mod = $1 if !defined($mod) && /^ИПМ.*   ([^ ]+)  /;
    
    next unless /\*МЕТ\*/;
    # print STDERR "Found labels at $.\n";
    last;
}
# print "Module $mod\n";

while (<>) {
    if (/^\*\*\*\*\*\*\*\*\*\*\*/) {
	# print STDERR "End of labels at $.\n";
        last;
    } 
    chop;
    push @lines, $_;
}

for ($col = 0; $col < 8; ++$col) {
    for ($line = 0; $line <= $#lines; ++$line) {
        $elt = substr($lines[$line], $col*16, 16);
        next if $elt =~ /СА *$/;
        $entry = ($elt =~ / \d\d\d\d\dВ/);
        ($name, $addr) = ($1, $2) if $elt =~ /([^ ]+) +(\d\d\d\d\d)/;
        $flags = 0;
        $flags = 1 if $name =~ /D\d\d\d\d\d/;
        $flags = 2 if $name =~ /А\d\d\d\d\d/;
        print "$addr $flags $name", ($entry ? " entry $mod" : ""), "\n" if $addr != 0 && $name ne '0ЛИТ' && $name ne '000000';
    }
}
