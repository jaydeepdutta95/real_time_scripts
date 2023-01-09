#!/bin/bash


df -H | awk '{print $5 " " $1}' | while read outputvar;


do

#echo "this is details $outputvar"

usage=$(echo $outputvar | awk '{print $1}' | cut -d'%' -f1)

echo $usage

done