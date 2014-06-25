#!/bin/sh

IFS="
"

for FILE in `ls ./*.opml`; do
  grep "<outline html" $FILE | awk -F \" '{print "\["$4"\]\("$2"\) : "$6"\n\n"}' | tee test.md

done
