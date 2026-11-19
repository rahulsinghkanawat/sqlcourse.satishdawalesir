-- drop table if exists employees3
create table employees3(employee_id int primary key,
first_name varchar(20)not null,
last_name varchar (20)not null,
department varchar(20),
salary numeric(10,2),
joining_date date,
age int);
select *from employees3;
