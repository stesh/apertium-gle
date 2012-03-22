#!/bin/bash
# loop through all files in directory and process all 
# 1. tokenize input text
# 2. flookup morphological analysis
# 3. convert to required CG i/p format
# 4. vislcg3  disambiguation
# elaine mar 2012

echo "chuaigh siad zzz amach" |  tr -sc "[:alnum:]" "[\n*]" | flookup bin/all.fst | perl dis/lookup2cgg.prl | vislcg3 -g dis/gael-dis.rle 



