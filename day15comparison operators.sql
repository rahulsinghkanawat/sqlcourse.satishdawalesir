--day15.comparison operator in sql
--matches age 30
select*from employees2
Where age = 30;

--matches all except 30
select *from employees2
where age <>30;

select first_name, age from employees2
where age !=30;

--salary greater than 5000
select first_name , salary from employees2
where salary>=50000;