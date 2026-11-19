--drop table if already exists 
drop table if exists users;

--create the users table

create table if not exists users(
user_id serial primary key,
username varchar(50)not null,
email varchar(100) not null,
age int,
city varchar(50));

 SELECT * FROM users ;

--insert 50 sample users into the users table
insert into users(username, email,age,city)
 VALUES
('rahul01', 'rahul01@gmail.com', 22, 'Jaipur'),
('priya02', 'priya02@gmail.com', 25, 'Delhi'),
('aman03', 'aman03@gmail.com', 21, 'Mumbai'),
('neha04', 'neha04@gmail.com', 27, 'Pune'),
('rohit05', 'rohit05@gmail.com', 24, 'Lucknow'),
('simran06', 'simran06@gmail.com', 23, 'Chandigarh'),
('vikas07', 'vikas07@gmail.com', 29, 'Indore'),
('pooja08', 'pooja08@gmail.com', 26, 'Bhopal'),
('arjun09', 'arjun09@gmail.com', 28, 'Ahmedabad'),
('kiran10', 'kiran10@gmail.com', 22, 'Surat'),
('deepak11', 'deepak11@gmail.com', 30, 'Nagpur'),
('sakshi12', 'sakshi12@gmail.com', 24, 'Kanpur'),
('manish13', 'manish13@gmail.com', 31, 'Patna'),
('anjali14', 'anjali14@gmail.com', 23, 'Ranchi'),
('sumit15', 'sumit15@gmail.com', 27, 'Noida'),
('kavita16', 'kavita16@gmail.com', 25, 'Gurgaon'),
('nitin17', 'nitin17@gmail.com', 29, 'Agra'),
('megha18', 'megha18@gmail.com', 21, 'Varanasi'),
('harsh19', 'harsh19@gmail.com', 26, 'Udaipur'),
('ritu20', 'ritu20@gmail.com', 28, 'Jodhpur'),
('yash21', 'yash21@gmail.com', 22, 'Kota'),
('komal22', 'komal22@gmail.com', 24, 'Ajmer'),
('abhishek23', 'abhishek23@gmail.com', 27, 'Meerut'),
('isha24', 'isha24@gmail.com', 23, 'Dehradun'),
('mohit25', 'mohit25@gmail.com', 32, 'Shimla'),
('tanya26', 'tanya26@gmail.com', 20, 'Amritsar'),
('gaurav27', 'gaurav27@gmail.com', 28, 'Ludhiana'),
('nikita28', 'nikita28@gmail.com', 26, 'Jammu'),
('sachin29', 'sachin29@gmail.com', 31, 'Srinagar'),
('payal30', 'payal30@gmail.com', 22, 'Raipur'),
('ankit31', 'ankit31@gmail.com', 25, 'Bilaspur'),
('sonal32', 'sonal32@gmail.com', 27, 'Bhubaneswar'),
('raj33', 'raj33@gmail.com', 29, 'Cuttack'),
('preeti34', 'preeti34@gmail.com', 24, 'Hyderabad'),
('vivek35', 'vivek35@gmail.com', 30, 'Bengaluru'),
('shreya36', 'shreya36@gmail.com', 23, 'Chennai'),
('tarun37', 'tarun37@gmail.com', 28, 'Kochi'),
('monika38', 'monika38@gmail.com', 26, 'Thiruvananthapuram'),
('aditya39', 'aditya39@gmail.com', 21, 'Mysuru'),
('riya40', 'riya40@gmail.com', 22, 'Visakhapatnam'),
('karan41', 'karan41@gmail.com', 27, 'Vijayawada'),
('divya42', 'divya42@gmail.com', 25, 'Nashik'),
('sandeep43', 'sandeep43@gmail.com', 29, 'Aurangabad'),
('muskan44', 'muskan44@gmail.com', 20, 'Gwalior'),
('lokesh45', 'lokesh45@gmail.com', 31, 'Faridabad'),
('heena46', 'heena46@gmail.com', 24, 'Panipat'),
('rakesh47', 'rakesh47@gmail.com', 33, 'Hisar'),
('bhavna48', 'bhavna48@gmail.com', 26, 'Alwar'),
('chirag49', 'chirag49@gmail.com', 28, 'Sikar'),
('nisha50', 'nisha50@gmail.com', 23, 'Bikaner');


 SELECT * FROM users ;
