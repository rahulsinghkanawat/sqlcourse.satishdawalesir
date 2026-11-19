drop table if exists products;
create table products(product_id serial primary key,
product_name varchar(100),
category varchar(50),
price numeric(10,2),
quantity int,
added_date date,
discount_rate numeric(5,2));

INSERT INTO products
(product_name, category, price, quantity, added_date, discount_rate)
VALUES
('Laptop', 'Electronics', 55000.00, 15, '2026-01-05', 10.00),
('Smartphone', 'Electronics', 25000.00, 30, '2026-01-07', 5.00),
('Headphones', 'Electronics', 1999.00, 50, '2026-01-10', 12.50),
('Keyboard', 'Electronics', 1299.00, 40, '2026-01-12', 8.00),
('Mouse', 'Electronics', 799.00, 60, '2026-01-15', 5.00),
('Monitor', 'Electronics', 12500.00, 20, '2026-01-18', 10.00),
('Printer', 'Electronics', 8500.00, 12, '2026-01-20', 7.50),
('USB Cable', 'Accessories', 299.00, 100, '2026-01-22', 15.00),
('Power Bank', 'Accessories', 1499.00, 45, '2026-01-25', 10.00),
('Webcam', 'Electronics', 2499.00, 25, '2026-01-28', 12.00),

('Office Chair', 'Furniture', 7500.00, 18, '2026-02-01', 15.00),
('Study Table', 'Furniture', 6500.00, 10, '2026-02-03', 10.00),
('Bookshelf', 'Furniture', 4200.00, 14, '2026-02-05', 8.00),
('Sofa', 'Furniture', 28000.00, 6, '2026-02-07', 12.50),
('Bed', 'Furniture', 32000.00, 5, '2026-02-10', 10.00),
('Dining Table', 'Furniture', 18000.00, 8, '2026-02-12', 7.00),
('Cupboard', 'Furniture', 14500.00, 9, '2026-02-15', 9.50),
('Coffee Table', 'Furniture', 5500.00, 11, '2026-02-18', 5.00),
('Office Desk', 'Furniture', 9000.00, 13, '2026-02-20', 10.00),
('Plastic Chair', 'Furniture', 1200.00, 75, '2026-02-22', 5.00),

('Notebook', 'Stationery', 80.00, 200, '2026-03-01', 5.00),
('Pen Pack', 'Stationery', 120.00, 150, '2026-03-03', 8.00),
('Pencil Box', 'Stationery', 150.00, 100, '2026-03-05', 10.00),
('Marker Set', 'Stationery', 250.00, 80, '2026-03-07', 12.00),
('A4 Paper', 'Stationery', 350.00, 90, '2026-03-10', 5.00),
('Stapler', 'Stationery', 180.00, 70, '2026-03-12', 7.50),
('Calculator', 'Stationery', 550.00, 45, '2026-03-15', 10.00),
('File Folder', 'Stationery', 90.00, 180, '2026-03-18', 5.00),
('Glue Stick', 'Stationery', 60.00, 250, '2026-03-20', 8.00),
('Whiteboard', 'Stationery', 1800.00, 25, '2026-03-22', 15.00),

('Running Shoes', 'Footwear', 3500.00, 35, '2026-04-01', 12.00),
('Formal Shoes', 'Footwear', 4200.00, 25, '2026-04-03', 10.00),
('Sports Shoes', 'Footwear', 2800.00, 40, '2026-04-05', 15.00),
('Sandals', 'Footwear', 1200.00, 60, '2026-04-07', 8.00),
('Slippers', 'Footwear', 600.00, 100, '2026-04-10', 5.00),
('Leather Shoes', 'Footwear', 5500.00, 18, '2026-04-12', 12.50),
('Casual Shoes', 'Footwear', 2200.00, 45, '2026-04-15', 10.00),
('School Shoes', 'Footwear', 1500.00, 50, '2026-04-18', 7.50),
('Flip Flops', 'Footwear', 450.00, 120, '2026-04-20', 5.00),
('Boots', 'Footwear', 6500.00, 12, '2026-04-22', 15.00),

('T-Shirt', 'Clothing', 799.00, 80, '2026-05-01', 10.00),
('Jeans', 'Clothing', 1800.00, 50, '2026-05-03', 12.00),
('Shirt', 'Clothing', 1200.00, 60, '2026-05-05', 8.00),
('Jacket', 'Clothing', 3500.00, 30, '2026-05-07', 15.00),
('Hoodie', 'Clothing', 2200.00, 40, '2026-05-10', 10.00),
('Track Pants', 'Clothing', 1400.00, 55, '2026-05-12', 7.50),
('Kurta', 'Clothing', 1600.00, 45, '2026-05-15', 12.00),
('Saree', 'Clothing', 4500.00, 20, '2026-05-18', 10.00),
('Sweater', 'Clothing', 1900.00, 35, '2026-05-20', 15.00),
('Cap', 'Clothing', 500.00, 90, '2026-05-22', 5.00);

select*from products;

---total qty. available of all products
select sum (quantity)as total_qty
from products;



select sum (quantity)as qty_of_gluestick
from products
where category='Footwear' ;





--total number of products
select count(*)as total_product
from products
where product_name like '%phone%';


---average price of products
select avg(price)as average_price
from products;



