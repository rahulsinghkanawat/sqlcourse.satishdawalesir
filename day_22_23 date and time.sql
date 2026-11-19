---date functions in sql 
select *from products;
--now()get current date and time
select now() as current_datetime;

select current_date as today_date;
select(current_date-Added_date) as days_different 
from products;


-- ---extract()-part of a date
select product_name,
EXTRACT(Year from added_date) as year_added,

extract(month from added_date)as month_added,
extract(day from added_date)as days_added
from products;




-- ---AGE CALCULATE AGE BETWEEN DATES
SELECT product_name,
age(current_date,added_date)as age_since_added
from products;



--to char()-formate dates as strings
select product_name,
To_CHAR (added_date,'DD-MON-YYYY') as formated_date
from products;



----CLASS 23



--DATE PART()-GET SPECIFIC DATE PART
select product_name, added_date,
date_part('dow',added_date) as day_of_weeks
from products;


--date_turnc()truncate date to precision

select product_name,
date_trunc('month',added_date)as month_start
from products;


select product_name, added_date,
added_date+interval'6month'
as new_date from products;



select current_time as current_time


select to_date('28-11-2024','dd-mm-yyyy')as converted_date;


