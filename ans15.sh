echo -n "Enter the basic salary: "
read basic_salary

dearness_allowance=$basic_salary * 0.4
house_rent=$basic_salary * 0.2

gross_pay=$basic_salary + $dearness_allowance + $house_rent
echo "Gross Pay: $gross_pay"
