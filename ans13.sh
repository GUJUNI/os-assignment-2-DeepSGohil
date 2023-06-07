echo -n "Enter a number: "
read number

is_prime=true

if [ $number -eq 1 ]; then
  is_prime=false
elif [ $number -eq 2 ]; then
  is_prime=true
else
  for (( i=2; i<$number; i++ )); do
    if [ $((number % i)) -eq 0 ]; then
      is_prime=false
      break
    fi
  done
fi

if [ $is_prime = true ]; then
  echo "$number is a prime number."
else
  echo "$number is not a prime number."
fi
