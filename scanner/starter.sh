#!/bin/bash

declare -a arr=()

while IFS=, read -r col1 col2
do
    arr+=($col2)
done < logs.latest.csv

#echo $arr
while true
do

for i in "${arr[@]}"
do
    echo "Found a log with URL ""$i";
    scanlog/scanlog -log_uri "$i" -precerts_only --num_workers 10;
    wait;
    sleep 2;
done

done
