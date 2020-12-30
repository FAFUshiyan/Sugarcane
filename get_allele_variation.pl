#!perl -w
open(IN,$ARGV[0]) or die "";
$/='>';
<IN>;
while(<IN>){
chomp;
my $nac = 0;
my $nca = 0;
my $nag = 0;
my $nga = 0;
my $ntc = 0;
my $nct = 0;
my $ntg = 0;
my $ngt = 0;
my $ncg = 0;
my $ngc = 0;
my $nat = 0;
my $nta = 0;
my ($name,$seq) = split(/\n/,$_,2);
my @tmp = split (/\n/,$seq);
my @seqa = split (//,$tmp[0]);
my @seqb = split (//,$tmp[1]);
print "$name\t";
$len = @seqb;
        foreach $i(0..$#seqa){
        my      $sae = $seqa[$i];
        my      $sbe = $seqb[$i];
        my  $two = $seqa[$i].$seqb[$i];
                if ($sae eq  '-' or $sbe eq '-'){
                        }elsif($sae eq $sbe){
                        }elsif($two eq 'at'){
                                                        $nat++;
                        }elsif($two eq 'ta'){
                                                        $nta++;
                        }elsif($two eq 'cg'){
                                                        $ncg++;
             }elsif ($two eq 'gc'){
                                                        $ngc++;
                }elsif($two eq 'ac'){
                                                        $nac++;
             }elsif($two eq 'ca'){
                                                        $nca++;
                        }elsif($two eq 'ag'){
                                                        $nag++;
             }elsif($two eq 'ga'){
                                                        $nga++;
                        }elsif($two eq 'tc'){
                                                        $ntc++;
             }elsif($two eq 'ct'){
                                                        $nct++;
                        }elsif($two eq 'tg'){
                                                        $ntg++;
             }elsif($two eq 'gt'){
                                                        $ngt++;
                        }else{
                        }

        }
        $to = $nac+$nag+$ntc+$ntg+$nat+$ncg+$nca+$nga+$nct+$ngt+$nta+$ngc;
        print "A=>C\t$nac\tC=>A\t$nca\tA=>G\t$nag\tG=>A\t$nga\tT=>C\t$ntc\tC=>T\t$nct\tT=>G\t$ntg\tG=>T\t$ngt\tA=>T\t$nat\tT=>A\t$nta\tC=>G\t$ncg\tG=>C\t$ngc\ttotal\t$to\tseq_len\t$len\n";
}
close IN;
