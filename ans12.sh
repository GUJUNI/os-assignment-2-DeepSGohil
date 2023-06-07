echo -n "Enter a string: "
read input_string

reverse_string=""

for (( i=${#input_string}-1; i>=0; i-- )); do
  reverse_string="${reverse_string}${input_string:$i:1}"
done

if [ "$input_string" = "$reverse_string" ]; then
  echo "The string '$input_string' is a palindrome."
else
  echo "The string '$input_string' is not a palindrome."
fi


