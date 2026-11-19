

----how to import csv file in sql
drop table if exists employees2;
create table employees2(employee_id int primary key,
first_name varchar(20)not null,
last_name varchar (20)not null,
department varchar(20),
salary numeric(10,2),
joining_date date,
age int);


select *from employees2;
copy employees2(employee_id, first_name, last_name, department, salary, joining_date, age)

from 'C:\sql 30 days\employee_dataday12.csv'
delimiter','
csv header;

