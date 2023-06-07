
for arg in "$@"
do
  if [ -d "$arg" ]; then
    echo "$arg is a directory."
  elif [ -f "$arg" ]; then
    echo "File: $arg"
    echo "Number of lines: $(wc -l < "$arg")"
  else
    echo "$arg is not a valid file or directory."
  fi
done
