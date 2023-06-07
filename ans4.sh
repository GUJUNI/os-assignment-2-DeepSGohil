echo -n "Enter the value of n: "
read n

echo "Prime numbers from 1 to $n:"
for ((i=2; i<=n; i++))
do
  is_prime=true
  for ((j=2; j<i; j++))
  do
    if ((i % j == 0))
    then
      is_prime=false
      break
    fi
  done

  if [ $is_prime == true ]
  then
    echo $i
  fi
done

