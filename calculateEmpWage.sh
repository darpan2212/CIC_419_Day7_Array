#!/bin/bash -x

PRESENT=1;
PART_TIME=2;
PAY_PER_HOUR=20;
MAX_WORKING_DAY=20;
MAX_WORKING_HOUR=40;

function getWorkingHour() {
	case $1 in
		$PRESENT)
			workingHour=8;
		;;

		$PART_TIME)
			workingHour=4;
		;;

		*)
			workingHour=0;
		;;
	esac
	echo $workingHour;
}

totalSalary=0;
totalWorkingHour=0;
day=0;
while [[ $day -lt $MAX_WORKING_DAY &&  $(($totalWorkingHour + 4)) -lt $MAX_WORKING_HOUR ]]
do
	empHr=$( getWorkingHour $((RANDOM%3)) );
	wage[day]=$(($empHr * $PAY_PER_HOUR));
	totalWorkingHour=$(($totalWorkingHour + $empHr));
	totalSalary=$(($totalSalary + ${wage[day]}));
	((day++));
done

echo "Total Monthly salary of an Emp : $totalSalary USD (Total working hour : $totalWorkingHour)"
echo "------------------------------------------------"
#echo ${wage[@]};

for index in ${!wage[@]}
do
	echo "Day $(($index+1)) = ${wage[index]} USD"
done