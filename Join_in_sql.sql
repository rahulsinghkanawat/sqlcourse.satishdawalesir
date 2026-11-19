--------Day 28 and 29 joins in SQL
-----create joins table
create table joins(employee_id serial primary key,
first_name varchar(50),
last_name varchar(50),
department_id int);

---Insert data into joins
INSERT INTO joins (first_name, last_name, department_id)
VALUES
('Rahul', 'Sharma', 101),
('Amit', 'Verma', 102),
('Priya', 'Singh', 103),
('Neha', 'Kumar', 101),
('Rohit', 'Mehta', 104),
('Anjali', 'Gupta', 102),
('Vikas', 'Yadav', 103),
('Pooja', 'Jain', 105),
('Karan', 'Patel', 104),
('Sneha', 'Joshi', 101),
('Arjun', 'Rathore', 102),
('Simran', 'Kaur', 105),
('Deepak', 'Saini', 103),
('Nisha', 'Agarwal', 106),
('Manish', 'Choudhary', NULL);




select * from joins;





-----create department table
create table department(dept_id int primary key,
dept_name varchar(50));



----insert data into department
INSERT INTO department (department_id, dep_name)
VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance'),
(104, 'Marketing'),
(105, 'Sales'),
(106, 'Operations'),
(107, 'Production'),
(108, 'Research'),
(109, 'Customer Support');




select* from department;


--------Inner Joins------retrievve join and their department names where a match exists.
select j. employee_id, j. first_name, j. last_name, d. department_id, d.department_name
from joins j
inner join 
department d
on j . department_id= d.department_id;



---------Left join
select j. employee_id, j. first_name, j. last_name, d. department_id, d.department_name
from joins j
left join 
department d
on j . department_id= d.department_id;

-------Right Join
select j. employee_id, j. first_name, j. last_name, d. department_id, d.department_name
from joins j
right join 
department d
on j . department_id= d.department_id;
-----full outer join
select j. employee_id, j. first_name, j. last_name, d. department_id, d.department_name
from joins j
full outer join 
department d
on j . department_id= d.department_id;


------cross join

select j.first_name, j. last_name , d.department_name
from joins j
cross join
department d;


-----self join---find joins who shere the same department.
select j1. first_name as employee_name1, 
j2. first_name as employee_name,
d.department_name
from joins j1 join
joins j2

on j1. department_id= j2.department_id and 
j1. employee_id!=j2. employee_id
join
department d
on 
j1.department_id= d.department_id;
