#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: $0 f1.sh f2.sh"
  exit 1
fi

file1="$1"
file2="$2"

if [ ! -f "$file1" ]; then
  echo "File '$file1' does not exist."
  exit 1
fi

if [ ! -f "$file2" ]; then
  echo "File '$file2' does not exist."
  exit 1
fi

if cmp -s "$file1" "$file2"; then
  echo "The files '$file1' and '$file2' are identical."
  echo "Deleting the second file '$file2'..."
  rm "$file2"
else
  echo "The files '$file1' and '$file2' are not identical."
fi
