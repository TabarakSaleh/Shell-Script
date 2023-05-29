#!/bin/bash

echo "perform arithmetic operations on two arguments from terminal" 

additionRes=$(( $1 + $2 ))
echo "$1 + $2 = ${additionRes}" 

subtractionRes=$(( $1 - $2 ))
echo "$1 - $2 = ${subtractionRes}" 

multiplicationRes=$(( $1 * $2 ))
echo "$1 * $2 = ${multiplicationRes}" 

divisionRes=$(( $1 / $2 ))
echo "$1 / $2 = ${divisionRes}" 