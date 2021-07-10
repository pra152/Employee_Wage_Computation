echo Welcome TO Employee Wage Computation.
isPresent=1
randomNumber=$((RANDOM%2))
echo "Choice"
read -p "Enter Any Case :" caseChoice
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
	case "$caseChoice" in
		0) echo "To calculate Daily Employee Wage"

			function calculateDailyEmployeeWageWorkHours(){
			read -p "Assume Wage per hour is :" isWagePerHour "rupees"
			isDayHour=8
			calculateEmployeeWageForOneDay=$(( $isWagePerHour * $isDayHour ))
			read -p "working days :" isDay
			calculateEmployeeWageForMonth=$(( $calculateEmployeeWageForOneDay  *  $isDay ))
			echo "To calculate employee wages for a Month :" $calculateEmployeeWageForMonth "rupees"
		}
		calculateDailyEmployeeWageWorkHours
		;;
	1)echo "To calculate part time Employee and wage"
		function partTimeEmployeeAndWageWorkHours(){
			read -p "Assume Wage per hour is :" isWagePerHour "rupees"
			isDayHour=8
			calculateEmployeeWageForOneDay=$(( $isWagePerHour * $isDayHour ))
			read -p "TO part time working days :" isDay
			calculateEmployeeWageForMonth=$(( $calculateEmployeeWageForOneDay * $isDay ))
			echo "To calculate employee part time wages for a Month :" $calculateEmployeeWageForMonth "rupees"
		}
		partTimeEmployeeAndWageWorkHours
		;;

		*)echo "No choice."
		;;
esac

else
   echo "Employee Absent."
 fi
