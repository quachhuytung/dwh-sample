insert into starter_project.sales_fact (
	emp_key,
	orderdate_key,
	cust_key,
	prod_key,
	sales_dollar_amount,
	quantity
)
select 
  employee_dimension.emp_key,
  time_dimension.day_key,
  customer_dimension.cust_key,
  product_dimension.prod_key,
  line_item.actual_price,
  line_item.quantity
--- Base table
from starter_project.sales_order
inner join starter_project.line_item on sales_order.order_id = line_item.order_id
inner join starter_project.customer on sales_order.customer_id = customer.customer_id
--- Employee dimension
inner join starter_project.employee_dimension on employee_dimension.employee_id = customer.salesperson_id
--- Time dimension
inner join starter_project.time_dimension on sales_order.order_date = time_dimension.actual_date
--- Customer dimension
inner join starter_project.customer_dimension on customer_dimension.customer_id = sales_order.customer_id
--- Product dimmension
inner join starter_project.product_dimension on product_dimension.product_id = line_item.product_id
where (
	(sales_order.order_date between product_dimension.price_start_date and product_dimension.price_end_date) 
	  or
	(sales_order.order_date >= product_dimension.price_start_date and product_dimension.price_end_date is null)
)