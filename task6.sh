echo "Enter the current salary you want me to calculate: "
read current_salary

if [ $current_salary -lt 6500 ]
then
  hra=$((current_salary * 10 / 100))
  da=$((current_salary * 90 / 100))
else
  hra=1500
  da=$((current_salary * 98 / 100))
fi

increased_salary=$((current_salary + hra + da))

echo "Salary after increased: $increased_salary"rs
