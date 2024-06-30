#!/usr/bin/env perl
use utf8;
use feature 'unicode_strings';
use open ':encoding(UTF-8)';
use open ':std', ':encoding(UTF-8)';

$verbose = 0;
if ($#ARGV >= 0 && $ARGV[0] eq '-v') { $verbose = 1; shift @ARGV; }

die "Usage: zongp.pl [-v] file [naz volume zone]\n" unless $#ARGV == 0 || $#ARGV == 3;

$src = $ARGV[0];
if ($#ARGV == 3) {
$naz = $ARGV[1];
$vol = $ARGV[2];
$zone= $ARGV[3];
}

die "НАЗ $naz - ошибка\n" if length($naz) > 5 || $naz !~ /^[0-7]+$/;
if (length($naz) < 5) { $naz = ('0' x (5-length($naz))) . $naz; }

die "Volume $vol - ошибка\n" if $vol < 1 || $vol > 4095;

die "Zone $zone - ошибка\n" if $zone !~ /^[0-7][0-7][0-7][0-7]$/;
$b6 = "$src.b6";
open(B, ">$b6") || die "Cannot open $b6 for writing\n";
print B qq/ШИФР 419999^
ТРАК 64^
ЛЕНТ 30(2048-6200)^
ЛЕНТ 42(2099)^/;
print B qq/ЛЕНТ 43($vol-ЗП)^/ if defined($vol);
print B qq/АЦП 40^
РОСП 0^
ВРЕМ 240^
ЛИСТ 0-37^
ВХОД 1077^
Е В 1077
К 00 070 1100
С 0010 0000 0030 1747
В 14000 А1
ВВД\$\$\$^
/;
open(F, $src) || die "Where did $src go?\n";
while (<F>) {
	chop;
	$_ = '*' if /^\b*$/;
	print B "$_^\n";
}
close (F);
print B qq/
КВЧ\$\$\$^
ТРН\$\$\$^
ЧТКОМП420070^
1-1^
БТМАЛФ^
/;
if (defined($naz)) {
print B qq/НАЗ   0$naz^
ЗОНГП 43$zone  000000^
/;
}
print B qq/
КНЦ\$\$\$^
_\$ЕКОНЕЦ
/;
close(B);
system("dispak $b6") if $verbose;
system("./prn.sh $b6");
$res = `grep ОШИБОК= $src.lst`;
if ($res =~ /=0000/) { $color = 2; } else { $color = 1; }
print STDERR "\033[1;3${color}m	 $res\033[22;39m\n";
$lst = $src;
$lst =~ s/\.be/.lst/;
system("mv $src.lst $lst");
