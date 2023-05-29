#!/bin/bash
file='file.txt'
 
i=1  
while read -r line; 
do  
i=$((i+1))  
done < $file 

echo " number of lines = $i"