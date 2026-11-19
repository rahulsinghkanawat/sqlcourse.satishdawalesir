-----day19 set operation
drop table if exists students_2023;
create table students_2023(student_id int primary key,
student_name varchar(100),
course varchar(50));

INSERT INTO students_2023 (student_id, student_name, course)
VALUES
(101, 'Amit Sharma', 'BCA'),
(102, 'Priya Singh', 'BBA'),
(103, 'Rahul Verma', 'B.Tech'),
(104, 'Neha Gupta', 'B.Com'),
(105, 'Vikas Kumar', 'MBA'),
(106, 'Sneha Patel', 'MCA'),
(107, 'Rohit Mehta', 'B.Sc'),
(108, 'Anjali Yadav', 'BA'),
(109, 'Karan Joshi', 'B.Tech'),
(110, 'Pooja Mishra', 'M.Com');

select * from students_2023;

drop table if exists students_2024;
create table students_2024(student_id int primary key,
student_name varchar(100),
course varchar(50));

INSERT INTO students_2024 (student_id, student_name, course)
VALUES
(101, 'Amit Sharma', 'BCA'),
(102, 'Priya Singh', 'BBA'),
(103, 'Rahul Verma', 'B.Tech'),
(114, 'Nisha Verma', 'MBA'),
(115, 'Saurabh Singh', 'B.Tech'),
(116, 'Meena Kumari', 'BA'),
(117, 'Rakesh Patel', 'B.Com'),
(118, 'Simran Kaur', 'MCA'),
(119, 'Manoj Kumar', 'B.Sc'),
(120, 'Isha Jain', 'B.Ed');

select * from students_2024;


----union combine results, removves duplicates
select student_id,student_name, course 
from students_2023
union
select student_id, student_name, course 
from students_2024;



select student_id,student_name, course 
from students_2023
union all
select student_id, student_name, course 
from students_2024;

---intersect
select student_name,course
from students_2023
intersect
select student_name, course
from students_2024;

-----except return trsults in the first table but not in the second
select student_name, course 
from students_2023 
except
select student_name, course 
from students_2024;
