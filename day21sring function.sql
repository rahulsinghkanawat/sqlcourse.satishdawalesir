-----string functions perform operation on text data



select * from products;

--get all the categoriies in uppercase
select product_name, price, quantity ,upper(category)category_capital
from products;



--get all the category in lowercase
select lower(category)as category_lower
from products;


---join products name and category text with hypen 
select concat (product_name, '-',category)as product_details
from products;


------extract the first 5 characters from product_name
select substring(product_name,1,5) as short_name
from products;




-------count length
select product_name, length (product_name)as count_of_characters
from products;





------remove leading and trailing space from string
select length (trim ('moniter')) as trimed_text;

select length('moniter   ') as trimed_text;


------replace the word"phone" with "device"in product name
-- update products
-- set product_name= Repalce(product_name::text, 'phone'::text,'device'::text)
-- where product_name like '%phone%';
-- from products;





----get the first three character from category
select left (category,3) as category_capital
from products;



select right(category,3) as category_capital
from products;
