echo -n "Enter the base number: "
read base

echo -n "Enter the exponent: "
read exponent

result=1

for ((i=1; i<=exponent; i++))
do
  result=$((result * base))
done

echo "$base raised to the power of $exponent is: $result"
