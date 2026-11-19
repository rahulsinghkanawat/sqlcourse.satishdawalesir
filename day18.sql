----DAY18 OTHER OPERATORS IN SQL
select* from employees2;

select first_name , last_name, department
from employees2
where  (department='IT');

select first_name, last_name, salary
from employees2
order by salary asc;



select first_name, last_name, salary
from employees2
order by salary desc;


select count(distinct department) as dep_unique_count
from employees2;