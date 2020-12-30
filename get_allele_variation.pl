#!perl -w
open(IN,$ARGV[0]) or die "";
$/='>';
<IN>;
while(<IN>){
chomp;
my ($name,$seq) = split(/\n/,$_,2);
my @tmp = split (/\n/,$seq);
my @seqa = split (//,$tmp[0]);
my @seqb = split (//,$tmp[1]);
 foreach $i(0..$#seqa){
        my      $sa = $seqa[$i];
                print "$sa";
                }
        print "\n";
 foreach $i(0..$#seqb){
        my $sb = $seqb[$i];
        print "$sb";
        }
print "\n";
        foreach $i(0..$#seqa){
        my      $sae = $seqa[$i];
        my      $sbe = $seqb[$i];
        my  $two = $seqa[$i].$seqb[$i];
                if ($sae eq  "-" or $sbe eq "-"){
                        print "#";
                        }elsif($sae eq $sbe){
                        print "*";
                        }elsif(($two eq 'at') or ($two eq 'ta')){
                        print "M";
                        }elsif(($two eq 'cg') or ($two eq 'gc')){
             print "N";
             }elsif(($two eq 'ac') or ($two eq 'ca')){
             print "J";
             }elsif(($two eq 'ag') or ($two eq 'ga')){
             print "K";
             }elsif(($two eq 'tc') or ($two eq 'ct')){
             print "Q";
             }elsif(($two eq 'tg') or ($two eq 'gt')){
             print "W";
             }else{
                        print " ";
                        }
        }
        print "\n";
}
close IN;
