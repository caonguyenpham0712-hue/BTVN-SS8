create database shop;
use shop;
create table product (
product_id int primary key,
product_name varchar(100),
product_price decimal,
product_stock int
);
create table customer (
customer_id int primary key,
customer_name varchar(100),
customer_city varchar (50)
);
create table orders (
order_id int primary key,
customer_id int, 
foreign key (customer_id) references customer(customer_id),
order_date DATE,
total_amount decimal 
); 
select count(*) as total_product
from product;
select sum(total_amount) as total_revenue
from orders;
select avg(product_price) as average_price
from product;
select max(total_amount) as max_order_amount 
from orders;
select min(total_amount) as min_order_amount
from orders;
select count(*) as hanoi_customers_count from customer
where customer_city = 'Hanoi';


