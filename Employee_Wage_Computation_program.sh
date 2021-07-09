echo Welcome to Employee Wage Computation.
ispresent=1
randomnumber=$((RANDOM%2))
caseChoice=$randomnumber
read -p "TO use  case for case statement:"caseChoice
if [ $randomnumber -eq $ispresent ]
then
	echo Employee is present.
case "$caseChoice" in
	0) echo "To calcualate Daily Employee Wage"
		function calculateDailyEmployeeWage(){
		read -p "Assume Wage per hour is:" isWagePerHour "rupees"
		read -p "Assume Full Day hours is:" isFullDayHour
		calculateEmployeeWage=$(( $isWagePerHour * isFullDayHour ))
		echo "To calculate daily Employee wage:" $calculateEmployeeWage "rupees"

              }
#	      calculateDailyEmployeeWage
	      ;;
	1) echo "To calculate part Time Employee and Wage"

		function partTimeEmployeeAndWage(){
		read -p "Assume Wage per hour is:" isWagePerHour "rupees"
        	read -p "Assume part time hours is:" isFullDayHour
		calculatePartTimeEmployeeWage=$(( $isWagePerHour * isFullDayHour ))
        	echo "To calculate part time Employee wage:" $calculatePartTimeEmployeeWage "rupees"
              }
#	      partTimeEmployeeAndWage
	      ;;
	*) echo "No choice"
	      ;;
esac
else
	echo Employee is Absent
fi
calculateDailyEmployeeWage
partTimeEmployeeAndWage
