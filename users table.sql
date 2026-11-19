drop the table if it already exists 
drop table if exsits users;

--create the users table

create table if not exsits users(
user_id serial primary key,
username varchar(50)not null,
email varch
)
select *from users;

select user_id,username,age from users;

update users
set age=25
where username ='neha04'

select *from users;

select *from users order by user_id asc;

update users set city='Jaipur'
where age>=25

delete from users 
where user_id=50;


update users
set age=age+1
where email like '%@gmail.com';

--to rename the username column to full_name
alter table users
rename column username to full_name

select *from users;

select *from users order by user_id asc;

--to change the age column data type from int to smallint
alter table users
alter column age type smallint;

--to add a not null constraint to city column
alter table users 
alter column city set not null;

select *from users;

-adding check constraint to age column
-------alter table users drop constraint age;

alter table users
add constraint age check (age>=18);

update users 
set age=22
where user_id=1

-----to rename the table name
alter table users
rename to customers ;

select * from customers order by user_id asc;


