echo -n "Enter the filename or full path of the file: "
read filename

if [ ! -e "$filename" ]; then
  echo "File '$filename' does not exist."
  exit 1
fi

file_info=$(ls -l "$filename")

file_permissions=$(echo "$file_info" | awk '{print $1}')
number_of_links=$(echo "$file_info" | awk '{print $2}')
owner=$(echo "$file_info" | awk '{print $3}')
group=$(echo "$file_info" | awk '{print $4}')
file_size=$(echo "$file_info" | awk '{print $5}')
modification_date=$(echo "$file_info" | awk '{print $6}')
modification_time=$(echo "$file_info" | awk '{print $7}')

echo "Filename: $filename"
echo "File access permissions: $file_permissions"
echo "Number of links: $number_of_links"
echo "Owner of the file: $owner"
echo "Group to which it belongs: $group"
echo "Size of file: $file_size"
echo "File modification date: $modification_date"
echo "File modification time: $modification_time"
