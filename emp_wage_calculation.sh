#! /bin/bash -x

echo " Welcome to Employee Wage Computation"

attendance=$((RANDOM%2))
isPresent=1
if [ $isPresent -eq $attendance ]
then
echo "Present"
else
echo "Absent"
fi
