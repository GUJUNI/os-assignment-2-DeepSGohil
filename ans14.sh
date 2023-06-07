echo "Enter student details:"
echo -n "Name: "
read name
echo -n "Roll Number: "
read roll_number
echo -n "Class: "
read class

echo "Enter marks for each subject:"
echo -n "English: "
read english_marks
echo -n "Mathematics: "
read math_marks
echo -n "Science: "
read science_marks

total_marks=$((english_marks + math_marks + science_marks))
average_marks=$((total_marks / 3))

echo "---------------------"
echo "Student Marksheet"
echo "---------------------"
echo "Name: $name"
echo "Roll Number: $roll_number"
echo "Class: $class"
echo "---------------------"
echo "Subject      Marks"
echo "---------------------"
echo "English      $english_marks"
echo "Mathematics  $math_marks"
echo "Science      $science_marks"
echo "---------------------"
echo "Total Marks: $total_marks"
echo "Average Marks: $average_marks"
echo "---------------------"
