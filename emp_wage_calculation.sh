#! /bin/bash -x

echo " Welcome to Employee Wage Computation"

declare -A dailyWages

perHourSalary=20
fullDayHours=8
partTimeHours=4

workHours=0
totalSalary=0
perDaySalary=0
totalWorkHours=0
days=0

function calculateWorkingHour() {
	case $1 in
		0)
			workHours=0;
			;;

		1)
			workHours=8;
			;;
		2)
			workHours=4;
			;;
	esac;
	echo $workHours;

}

while [[ $days -lt 20 || $totalWorkHours -lt 100 ]]
do
	wh=$(calculateWorkingHour $((RANDOM%3)))
	totalWorkHours=$(($totalWorkHours+$wh))

if [ $totalWorkHours -gt 100 ]
then
break
fi

perDaySalary=$(($workHours*$perHourSalary))
dailyWages[ $days ]=$perDaySalary
totalSalary=$(($totalSalary+$perDaySalary))
((days++))
done
echo "Month earning=" $totalSalary
echo "Total days=" $days
echo "Today earning=" $totalWorkHours

for d in ${!dailyWages[@]}
do
echo "daily wages for $d is ${dailyWages[ $d ]}"
done
