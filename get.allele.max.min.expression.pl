#!perl -w
use List::Util qw(first);
use List::Util qw(max);
use List::Util qw(min);
my %hash;
open (IN,$ARGV[0]) or die "";
<IN>;
while (<IN>){
        chomp;
        my @tmp    = split (/\s+/,$_);
           $tmp[0] =~s/_/-/g;
           $hash{$tmp[0]} = $tmp[3];
        }
        close IN;
        
open (IM,$ARGV[1]) or die "";
while (<IM>){
        chomp;
        @tmp = split (/\s+/,$_);
        my $name = shift @tmp;
        my @fpkm = qw//;
        my %ID;
        my $total = 0;
        foreach $i(0..$#tmp){
                $gene = $tmp[$i];
                $gene =~ s/\|.*//g;
                $expr = $hash{$gene};
                push @fpkm, $expr;
                $ID{$i} = $gene;
                $total += $expr;
                }
        next if ($total==0);
        $max = max @fpkm;
        $min = min @fpkm;
        $id_max = first { $fpkm[$_] eq $max} 0..$#fpkm;
        $id_min = first { $fpkm[$_] eq $min} 0..$#fpkm;
        $max_name = $ID{$id_max};
        $min_name = $ID{$id_min};
        print "$max_name\t$min_name\n";
        }
        close IM;        
