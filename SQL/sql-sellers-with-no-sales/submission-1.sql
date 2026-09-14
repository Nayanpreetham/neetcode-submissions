select seller_name 
from seller 
where seller_id not in (select distinct seller_id
from orders where sale_date::TEXT LIKE '2020%' )
ORDER BY seller_name asc ;
