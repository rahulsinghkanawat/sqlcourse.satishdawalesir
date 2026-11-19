---Day 24conditional functions
select * from products;


/*1. case function- catagotizing based on conditions we will catagarize products into price range.
expensive it the price is grater than or equal to 50000
moderate if price is between 10000 and 49999
afffordable if the price is less than 10000*/


select product_name,price,
case 
when price>=50000 then 'expensive'
when price>=10000 and price<=49999 then 'moderate'
else'affordable'
end as price_categary
from products;




---Day 25 Assignment on case functions
/*cse with and & or operators stock status we will classify products based on quantity available
in stock if quantity is 10 or more.limited stock if quantity is between 5 and 9 . 
out of stock soon if quantity is less than 5.*/

select * from products;
select product_name , quantity,
case
when quantity>=20 then 'instock'
when quantity between 12 and 20 then 'limited'
else 'out of stock soon'
end as stock_status
from products;


/* case with like operator catagory classification */.
select product_name, category,
case
when category like'Electronics%' then 'eloctronics_items'
when category like 'Furnitures%'then 'Furnitures_items'
else 'eccessory items'
end as category_status
from products;


--class 26 coalesce functions in sql
alter table products
add column discount_price numeric(10,2);


update products
set discount_price=null
where product_name in('Laptop','Mouse');

update products
set discount_price= price*0.9
where product_name in('Laptop','Mouse');


select * from products;


select product_name, price, discount_price
from products;

select product_name,
coalesce(discount_price ,price)
as final_price
from products;

--day_27 windows function in sql
--assign a unique row number to each product within the same category
select product_name , category, price,
row_number()over(partition by category 
order by price desc) as row_number
from products;



select product_name, category, price, 
dense_rank()over (partition by category order by price desc )
as ranking 
from products;

select product_name , category, price , 
sum(price) over(partition by category order by price asc) 
as running_total
from products;