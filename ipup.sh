#!/bin/bash
input="chnroutes.txt"
while IFS= read -r line
do
  if [[ "$line" != \#* ]]; then
    /sbin/route add -net $line $1
  fi
done < "$input"