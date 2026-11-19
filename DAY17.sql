--day17 between like and in operators
select*from employees2;
-----retrieves employee whose salary is between 4000 and 6000 -use between operators
select first_name , last_name , salary
from employees2
where salary between 40000 and 60000

------find employees whose email addresses end with gmail.com- use like operators
select first_name , last_name, email 
from employees
where email like'%@gmail.com' ;

select first_name from employees2
where first_name like 'A%;'

select*from employees2;

select first_name, last_name , department
from employees2
where department in ('Finance','Marketing','IT');

