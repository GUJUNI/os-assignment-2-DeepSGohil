year=$(date +%Y)
month=$(date +%m)

echo "Sundays in $month/$year:"
echo "------------------------"

for ((day=1; day<=31; day++)); do
    if date -d "$year-$month-$day" >/dev/null 2>&1; then
        if [ $(date -d "$year-$month-$day" +%u) -eq 7 ]; then
            echo "$day/$day/$year"
        fi
    fi
done