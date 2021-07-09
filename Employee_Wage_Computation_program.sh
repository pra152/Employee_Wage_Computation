echo Welcome to Employee Wage Computation.
ispresent=1
randomnumber=$((RANDOM%2))
if [ $randomnumber -eq $ispresent ]
then
	echo Employee is present.
else
	echo Employee is Absent
fi
