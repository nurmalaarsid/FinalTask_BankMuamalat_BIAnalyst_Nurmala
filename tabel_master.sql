create
or
replace view
master as
select
	c.customer_email as cust_email,
	c.customer_city as cust_city,
	o.date as  order_date,
	o.quantity as order_qty,
	p.prod_name as product_name,
	p.price as product_prace,
	pc.category_name as category_name,
	(o.quantity * p.price) as total_sales
from orders o
join customers c on o.customer_id = c.customer_id
join products p on o.prod_number = p.prod_number
join productcategory pc on p.category_id = pc.category_id
order by o.date asc;