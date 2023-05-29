result=1

echo "factorial of a given arguments from terminal" 

if [ $1 == 0 ]
then 
    result=0
else 
    for (( i=1; i<=$1; i++ ))
    do
         result=$(( $result * $i ))
    done
fi

echo "the factorial of $1 is $result"