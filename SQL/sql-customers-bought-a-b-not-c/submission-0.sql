select customer_id , customer_name 
from customers
where customer_id in (select customer_id from orders
where product_name = 'A' 
intersect 
select customer_id from orders
where product_name = 'B'
except
select customer_id from orders
where product_name = 'C' )
order by customer_name asc ;