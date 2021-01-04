#!perl -w

use List::Util qw(first);
use List::Util qw(max);
use List::Util qw(min);
my %hash = (
        1 => '1A',
        2 => '2B',
        3 => '3C',
        4 => '4D'
        );
open (IN,$ARGV[0]) or die "";
while (<IN>){
        chomp;
        @tmp = split (/\s+/,$_);
        $name = shift @tmp;
        $max = max @tmp;
        $min = min @tmp;
        $id_max = first { $tmp[$_] eq $max} 0..$#tmp;
        $id_min = first { $tmp[$_] eq $min} 0..$#tmp;
        $max_name = $name."-".$hash{$id_max+1};
        $min_name = $name."-".$hash{$id_min+1};
        print "$max_name\t$min_name\n";
        }
        close IN;
