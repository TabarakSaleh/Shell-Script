num=0
result=1

echo "factorial of a given number" 
read -p "Enter the first number " num

if [ $num == 0 ]
then 
    result=0
else 
    for (( i=1; i<=$num; i++ ))
    do
         result=$(( $result * $i ))
    done
fi

echo "the factorial of $num is $result"