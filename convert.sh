#!/bin/bash
cat sniffed_codes_from_RF.txt | grep Rf | sed 's/\(.*\)\("RfRaw.*\)/{\2/g' > converted.txt
./BitBucketConverter -f converted.txt | grep "Resulting 0xB0 data: " | sed 's/\(.*\)\(AA.*\)\(".*\)/\2/g' | sed "s/\(###### Skipping line \)'\(.*\)\(' ######\)/\2:/g" | sed 's/ //g' | tee ready_to_use_codes.txt
rm converted.txt;
