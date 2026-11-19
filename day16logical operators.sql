--day16 logical operators in sql
select * from employees2
where age>=40 and salary>=50000;

--using or operator
select*from employees2
where age>=60 or salary>=90000;

--using not
select *from employees2
where not (department='IT');