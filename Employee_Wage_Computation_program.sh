echo Welcome to Employee Wage Computation.
ispresent=1
randomnumber=$((RANDOM%2))
caseChoice=$randomnumber
read -p "TO use  case for case statement:"caseChoice
if [ $randomnumber -eq $ispresent ]
then
	echo Employee is present.
case "$caseChoice" in
	1)echo "To calcualate Daily Employee Wage"

              function calculateDailyEmployeeWage(){
		read -p "Assume Wage per hour is :" isWagePerHour "rupees"
		isDayHour=8
		calculateEmployeeWageForOneDay=$(( $isWagePerHour * $isDayHour ))
		read -p "working days :" isDay
		calculateEmployeeWageForMonth=$(( $calculateEmployeeWageForOneDay  *  $isDay ))
		echo "To calculate employee wages for a Month :" $calculateEmployeeWageForMonth "rupees"
		}

             calculateDailyEmployeeWage
	      ;;
	2)echo "To calculate part Time Employee and Wage"

		function partTimeEmployeeAndWage(){
		read -p "Assume Wage per hour is :" isWagePerHour "rupees"
		isDayHour=8
		calculateEmployeeWageForOneDay=$(( $isWagePerHour * $isDayHour ))
		read -p "TO part time working days :" isDay
		calculateEmployeeWageForMonth=$(( $calculateEmployeeWageForOneDay * $isDay ))
		echo "To calculate employee part time wages for a Month :" $calculateEmployeeWageForMonth "rupees"
		}

	      partTimeEmployeeAndWage
	      ;;
	*) echo "No choice"
	      ;;
esac

else
	echo Employee is Absent
fi

