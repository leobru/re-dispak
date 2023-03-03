#!/usr/bin/env perl
use utf8;
use feature 'unicode_strings';
use open ':std', ':encoding(UTF-8)';
$skip = 1;

while (<>) {
    next unless /\*МЕТ\*/;
    # print STDERR "Found labels at $.\n";
    last;
}
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
        ($name, $addr) = ($1, $2) if $elt =~ /([^ ]+) +(\d\d\d\d\d)/;
        print $addr, ' 0 ', $name, "\n" if $addr != 0 && $name ne '0ЛИТ' && $name ne '000000';
    }
}
