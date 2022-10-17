#! /bin/bash -x

echo " Welcome to Employee Wage Computation"

perHourSalary=20
fullDayHours=8
partTimeHours=4

attendance=$((RANDOM%2))
workHours=0
totalSalary=0
perDaySalary=0

for ((day=1; day<=20; day++))
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

perDaySalary=$((workHours*$perHourSalary))
totalSalary=$((totalSalary+$perDaySalary))
done
echo "Month earning="$totalSalary
echo "Today earning="$(($workHours*$perHourSalary))
