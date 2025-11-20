create table products (
product_id int primary key,
product_name varchar(100),
product_category varchar(50),
product_price decimal
);
create table orders (
order_id int primary key,
customer_id int,
order_date date,
total_amount decimal
);
select category, count(*) as number_of_products
from product
group by category;

select customer_id, sum(total_amount) as total_spent
from orderes
group by customer_id;

select category, count(*) as product_count, avg(price) as avg_price, max(price) as max_price, min(price) as min_price
from product
group by category;

select customer_id, sum(total_amount) as total_spent 
from orderes
group by customer_id
having  total_spent > 1000;

select category, count(*) as product_count
from product
group by category
having product_count > 5;

select customer_id, sum(total_amount) as total_spent
from orderes
group by customer_id
order by total_spent desc
limit 3;
