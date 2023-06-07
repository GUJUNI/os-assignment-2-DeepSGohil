while true; 
do
  echo "Menu:"
  echo "1) List all files of the current directory"
  echo "2) Print the current directory"
  echo "3) Print the date"
  echo "4) Print the users"
  echo "0) Exit"

  echo -n "Enter your choice: "
  read choice

  case $choice in
    1)
      echo "Files in the current directory:"
      ls -l
      ;;
    2)
      echo "Current directory: $PWD"
      ;;
    3)
      echo "Current date: $(date +%Y-%m-%d)"
      ;;
    4)
      echo "Users: $(who | cut -d' ' -f1 | sort | uniq)"
      ;;
    0)
      echo "Exiting..."
      exit 0
      ;;
    *)
      echo "Invalid option. Please try again."
      ;;
  esac

  echo
done
