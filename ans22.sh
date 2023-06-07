if [ $# -ne 3 ]; then
  echo "Usage: $0 <option> <file> <lines>"
  echo "Options: head, tail"
  exit 1
fi

option="$1"
file="$2"
lines="$3"

if [ "$option" == "head" ]; then
  if [ -f "$file" ]; then
    echo "First $lines lines of $file:"
    echo "=========================="
    head -n "$lines" "$file"
    echo "=========================="
  else
    echo "File '$file' does not exist."
  fi
elif [ "$option" == "tail" ]; then
  if [ -f "$file" ]; then
    echo "Last $lines lines of $file:"
    echo "=========================="
    tail -n "$lines" "$file"
    echo "=========================="
  else
    echo "File '$file' does not exist."
  fi
else
  echo "Invalid option. Options: head, tail"
fi
