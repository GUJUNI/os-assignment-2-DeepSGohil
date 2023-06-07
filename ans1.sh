echo "Odd numbers using for loop:"
for ((i=1; i<=10; i+=2))
do
  echo $i
done

echo "Odd numbers using while loop:"
num=1
while [ $num -le 10 ]
do
  echo $num
  num=$((num+2))
done

echo "Even numbers using until loop:"
num=2
until [ $num -gt 10 ]
do
  echo $num
  num=$((num+2))
done

