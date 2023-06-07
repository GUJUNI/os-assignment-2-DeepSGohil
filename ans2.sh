while true;
do
  echo "Menu:"
  echo "1. Addition"
  echo "2. Subtraction"
  echo "3. Multiplication"
  echo "4. Division"
  echo "5. Exit"
  echo -n "Enter your choice: "

  read choice

  case $choice in
    1)
      echo -n "Enter the first number: "
      read num1
      echo -n "Enter the second number: "
      read num2
      result=$((num1 + num2))
      echo "Result: $num1 + $num2 = $result"
      ;;
    2)
      echo -n "Enter the first number: "
      read num1
      echo -n "Enter the second number: "
      read num2
      result=$((num1 - num2))
      echo "Result: $num1 - $num2 = $result"
      ;; 
    3)
      echo -n "Enter the first number: "
      read num1
      echo -n "Enter the second number: "
      read num2
      result=$((num1 * num2))
      echo "Result: $num1 * $num2 = $result"
      ;;
    4)
      echo -n "Enter the dividend: "
      read num1
      echo -n "Enter the divisor: "
      read num2
      if [ $num2 -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
      else
        result=$((num1 / num2))
        echo "Result: $num1 / $num2 = $result"
      fi
      ;;
    5)
      echo "Exiting..."
      exit 0
      ;;
    *)
      echo "Invalid choice. Please try again."
      ;;
  esac

  echo "-------------------------------------"
done

