echo Welcome TO Employee Wage Computation.
wage_per_hour=20
is_full_time=2
is_part_time=1
Employee_hour_fulltime=8
Employee_hour_parttime=4
read -p "To Number of Working day:" Number_of_working_days
read -p "To Number of working hours:" Number_of_working_hours
totalSalary=0
totalEmployeeHours=0
totalworkingdays=0
while [[ $totalEmployeeHours -le $Number_of_working_Hours && $totalworkingdays -le $Number_of_working_days ]]
do
	((totalworkingdays++))
	randomcheck=$((RANDOM%3))
	case $randomcheck in
		$is_full_time )
			    employeeHour=$((Employee_hour_fulltime))
			     ;;
		$is_part_time )
			    employeeHour=$((Employee_hour_parttime))
			     ;;
		* )
			    employeeHour=0
			     ;;
	   esac
	   totalEmployeeHours=$(($totalEmployeeHours + $employeeHour))
	   echo "To total employee hours :" $totalEmployeeHours
done
totalWorkingWage=$(($totalEmployeeHours * $wage_per_hour))
