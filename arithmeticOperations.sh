#! /usr/bin/bash

num1=0
num2=0

echo "perform arithmetic operations on two numbers" 
read -p "Enter the first number " num1
read -p "Enter the second number " num2

while [ "${num2}" == 0 ]
do
  read -p "the second number should not be =0 enter the second number again" num2
done

additionRes=$(( $num1 + $num2 ))
echo "${num1} + ${num2} = ${additionRes}" 

subtractionRes=$(( $num1 - $num2 ))
echo "${num1} - ${num2} = ${subtractionRes}" 

multiplicationRes=$(( $num1 * $num2 ))
echo "${num1} * ${num2} = ${multiplicationRes}" 

divisionRes=$(( $num1 / $num2 ))
echo "${num1} / ${num2} = ${divisionRes}" 