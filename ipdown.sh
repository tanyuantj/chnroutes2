#!/bin/bash
input="chnroutes.txt"
while IFS= read -r line
do
  if [[ "$line" != \#* ]]; then
    /sbin/route delete -net $line
  fi
done < "$input"