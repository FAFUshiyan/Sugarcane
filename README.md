# Sugarcane

The script of sugarcane working process

command:for k in  `ls *.align`; do  get.allele.variation.pl <(cat <(perl ../root/AD_ED/mod1.pl $k) <(perl ../root/AD_ED/mod2.pl  $k)) >> allele.txt ; done
