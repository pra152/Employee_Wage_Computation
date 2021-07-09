echo Welcome to Employee Wage Computation.
ispresent=1
randomnumber=$((RANDOM%2))
if [ $randomnumber -eq $ispresent ]
then
	echo Employee is present.
	function partTimeEmployeeAndWage(){
	read -p "Assume Wage per hour is:" isWagePerHour "rupees"
        read -p "Assume part time hours is:" isFullDayHour
	calculatePartTimeEmployeeWage=$(( $isWagePerHour * isFullDayHour ))
        echo "To calculate part time Employee wage:" $calculatePartTimeEmployeeWage "rupees"
}

else
	echo Employee is Absent
fi
partTimeEmployeeAndWage
