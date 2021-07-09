echo Welcome to Employee Wage Computation.
ispresent=1
randomnumber=$((RANDOM%2))
if [ $randomnumber -eq $ispresent ]
then
	echo Employee is present.
else
	echo Employee is Absent
fi
function calculateDailyEmployeeWage(){
		read -p "Assume Wage per hour is:" isWagePerHour "rupees"
		read -p "Assume Full Day hours is:" isFullDayHour
		calculateEmployeeWage=$(( $isWagePerHour * isFullDayHour ))
		echo "To calculate daily Employee wage:" $calculateEmployeeWage "rupees"

  }
calculateDailyEmployeeWage
