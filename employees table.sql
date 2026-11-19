--drop the table if it already exists
drop table if exists employees;
--create the employees table
create table employees(employee_id serial primary key,
first_name varchar(50)not null,
last_name varchar(50)not null,
department varchar(50),
salary decimal(10,2) check(salary>0),
joining_date date not null,
age int check(age>=18));

select *from  employees ;



--insert data into employees table


INSERT INTO employees (first_name, last_name, department, salary, joining_date, age) 
VALUES 
('Vivaan','Verma','IT',45000.00,'2022-02-15',25),
('Aditya','Singh','Finance',50000.00,'2022-03-12',28),
('Krishna','Patel','Marketing',42000.00,'2022-04-05',24),
('Ishaan','Gupta','Sales',38000.00,'2022-05-18',30),
('Arjun','Mehta','HR',36000.00,'2022-06-20',26),
('Sai','Joshi','IT',47000.00,'2022-07-25',27),
('Reyansh','Kapoor','Finance',52000.00,'2022-08-14',31),
('Atharv','Yadav','Marketing',41000.00,'2022-09-09',23),
('Kabir','Malhotra','Sales',39000.00,'2022-10-30',29),
('Rohan','Bansal','HR',35500.00,'2023-01-11',32),
('Mohit','Chauhan','IT',48000.00,'2023-02-22',24),
('Karan','Saxena','Finance',53000.00,'2023-03-18',35),
('Rahul','Agarwal','Marketing',42500.00,'2023-04-27',27),
('Aman','Mishra','Sales',40000.00,'2023-05-19',26),
('Deepak','Tiwari','HR',36500.00,'2023-06-13',33),
('Sandeep','Rana','IT',49000.00,'2023-07-07',36),
('Manish','Pandey','Finance',54000.00,'2023-08-15',38),
('Ankit','Dubey','Marketing',43500.00,'2023-09-12',29),
('Sumit','Soni','Sales',40500.00,'2023-10-01',21),
('Neha','Sharma','HR',37000.00,'2023-11-11',25),
('Priya','Verma','IT',50000.00,'2023-12-08',30),
('Ananya','Singh','Finance',55000.00,'2024-01-05',28),
('Sneha','Patel','Marketing',44000.00,'2024-02-10',24),
('Pooja','Gupta','Sales',41000.00,'2024-03-21',31),
('Kavya','Mehta','HR',37500.00,'2024-04-15',27),
('Riya','Joshi','IT',51000.00,'2024-05-18',34),
('Aditi','Kapoor','Finance',56000.00,'2024-06-22',29),
('Simran','Yadav','Marketing',44500.00,'2024-07-09',22),
('Nisha','Malhotra','Sales',41500.00,'2024-08-30',26),
('Harsh','Bansal','HR',38000.00,'2024-09-10',37),
('Yash','Chauhan','IT',52000.00,'2024-10-05',32),
('Laksh','Saxena','Finance',57000.00,'2024-11-11',41),
('Dhruv','Agarwal','Marketing',45000.00,'2024-12-01',28),
('Parth','Mishra','Sales',42000.00,'2025-01-15',23),
('Nikhil','Tiwari','HR',38500.00,'2025-02-18',35),
('Uday','Rana','IT',53000.00,'2025-03-22',39),
('Varun','Pandey','Finance',58000.00,'2025-04-17',42),
('Ritesh','Dubey','Marketing',45500.00,'2025-05-08',30),
('Gaurav','Soni','Sales',42500.00,'2025-06-12',24),
('Meera','Sharma','HR',39000.00,'2025-07-21',27),
('Tanvi','Verma','IT',54000.00,'2025-08-14',31),
('Isha','Singh','Finance',59000.00,'2025-09-18',36),
('Muskan','Patel','Marketing',46000.00,'2025-10-09',25),
('Palak','Gupta','Sales',43000.00,'2025-11-25',29),
('Diya','Mehta','HR',39500.00,'2025-12-30',33),
('Sakshi','Joshi','IT',55000.00,'2026-01-15',38),
('Radhika','Kapoor','Finance',60000.00,'2026-02-20',40),
('Khushi','Yadav','Marketing',47000.00,'2026-03-12',26),
('Anvi','Malhotra','Sales',44000.00,'2026-04-18',28);

select *from employees;


-----assignment questions

--Q.1 retrieve all employees first_name and their department
select first_name,
department from employees;

---Q.2 update the salary of all employees in the 'it'department by increasing it by 10%.
update employees
set salary=salary+(salary*0.1)
where department='IT'

--Q.3  delete all employees who are older than 35 years.
delete from employees
where age>35;

select *from employees;

--Q.4 add a new column 'email' to the employees table
alter table employees
add column email varchar(100);

--Q.5 rename the dept_name column to department
alter table employees
rename column department to dept_column
;

select *from employees;

--Q.6 retrive the name if the employees who joined after january1,2025
select first_name, last_name, joining_date from employees
where joining_date>'2025-01-01';

--Q.7 change the data type of the salary column to integer.
alter table employees
alter column salary type integer using salary::integer;


select *from employees;
---Q.8 list all employees with their age and salary in descending order of salary.
select first_name,age,salary from employees order by salary desc;

--Q.9 insert a new employee with the following details.
insert into employees(first_name,last_name,dept_column,salary,joining_date,age)
values('radhe','krishna','BI developer',60000,'01-09-2026',22);


select *from employees;



--Q.10 update age of employees +1 to every employee
update employees
set age =age-(-1);
select *from employees;
