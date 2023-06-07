
echo -n "Enter a six-digit number: "
read number

if ! [[ $number =~ ^[0-9]{6}$ ]]; then
  echo "Invalid input. Please enter a six-digit number."
  exit 1
fi

reversed_number=""
length=${#number}

for (( i=$length-1; i>=0; i-- ))
do
  digit=${number:i:1}
  reversed_number="$reversed_number$digit"
done

echo "Reversed number: $reversed_number"
