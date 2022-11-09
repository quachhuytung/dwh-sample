insert into starter_project.product_dimension (
	product_id,
	product_description,
	product_code,
	brand_name,
	list_price,
	min_price,
	price_start_date,
	price_end_date,
	current_flag
)
select
  p.product_id,
  p.description,
  p.product_code,
  substring(p.description from 0 for position(' ' in p.description)),
  h.list_price,
  h.min_price,
  h.start_date,
  h.end_date,
  case
    when h.end_date is null then 'T'
	else 'F'
  end
from
  starter_project.product as p
inner join
  starter_project.price_hist h
on p.product_id = h.product_id
;