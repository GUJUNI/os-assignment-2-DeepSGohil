while true; 
do
  echo "Menu:"
  echo "1. Remove a file"
  echo "2. Rename a file"
  echo "3. Copy a file"
  echo "4. Modify a file"
  echo "5. Exit"
  echo -n "Enter your choice: "
  read choice

  case $choice in
    1)
      echo -n "Enter the filename to remove: "
      read filename

      if [ -f "$filename" ]; then
        rm "$filename"
        echo "File '$filename' removed successfully."
      else
        echo "File '$filename' does not exist."
      fi
      ;;
    2)
      echo -n "Enter the current filename: "
      read current_name

      if [ -f "$current_name" ]; then
        echo -n "Enter the new filename: "
        read new_name

        mv "$current_name" "$new_name"
        echo "File renamed from '$current_name' to '$new_name' successfully."
      else
        echo "File '$current_name' does not exist."
      fi
      ;;
    3)
      echo -n "Enter the filename to copy: "
      read filename

      if [ -f "$filename" ]; then
        echo -n "Enter the destination filename: "
        read destination

        cp "$filename" "$destination"
        echo "File '$filename' copied to '$destination' successfully."
      else
        echo "File '$filename' does not exist."
      fi
      ;;
    4)
      echo -n "Enter the filename to modify: "
      read filename

      if [ -f "$filename" ]; then
        echo "Enter the content to overwrite the file (Press Ctrl+D when done):"
        cat > "$filename"
        echo "File '$filename' modified successfully."
      else
        echo "File '$filename' does not exist."
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

