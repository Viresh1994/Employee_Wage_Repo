#! /bin/bash -x

echo " Welcome to Employee Wage Computation"

perHourSalary=20
fullDayHours=8
partTimeHours=4

workHours=0
totalSalary=0
perDaySalary=0
totalWorkHours=0
days=0

while [[ $days -lt 20 || $totalWorkHours -lt 100 ]]
do
attendance=$((RANDOM%3))
case $attendance in
		0) echo "absent"
					workHours=0;;
		1) echo "Present"
					workHours=8;;
		2) echo "part time present"
					workHours=4;;
esac

if [ $totalWorkHours -gt 100 ]
then
break
fi

totalWorkHours=$(($totalWorkHours+$workHours))
perDaySalary=$(($workHours*$perHourSalary))
totalSalary=$(($totalSalary+$perDaySalary))
((days++))
done
echo "Month earning="$totalSalary
echo "Today earning="$(($workHours*$perHourSalary))
echo "Total  hours=" $totalWorkHours
