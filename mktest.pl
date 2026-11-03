#!/usr/bin/env perl
use utf8;
use feature 'unicode_strings';
use open ':encoding(UTF-8)';
use open ':std', ':encoding(UTF-8)';

# Making a copy of 2053 in build/test/ and writing files named
# build/dump/S*-L? to the corresponding locations of the copy

system('mkdir -p build/test');
system('besmtool dump 2053 --length=01744 --to-file=build/test/test2053.dump'); # 2053 from the standard location
system('ln -s -f test2053.bin build/test/2053'); # Preparing a test 2053 in build/test
system('env BESM6_PATH=build/test besmtool write 2053 --from-file=build/test/test2053.dump'); # Initializing the local copy

while (<build/dump/S[0-7]*-L[0-7]>) {
    ($zone, $len) = m{S([^/]*)-L(.)$};
    $zone = oct($zone);
    if ($zone < 0400 || $zone >= 01000) {
        print STDERR "Stray file $_\n";
        next;
    }
    # Writing all existing "silver" files to the disk
    system("env BESM6_PATH=build/test besmtool write 2053 --start=$zone --length=$len --from-file=$_; echo \$?");
}
