select*from employees2;

---retrieves the first_name, salary, and calculate a 10% bonus on the salary.
select first_name,salary,
(salary*0.10)as bonus 
from employees2;

----calculate the annual salary and salary increment by 5% -show the monthly new salry as well.
select first_name, last_name,salary,
(salary*12)as annual_salary,
(salary*0.05)as increment_amount,
(salary*1.05)as new_salary,
(salary+salary*0.05)as new_salary2

from employees2;
