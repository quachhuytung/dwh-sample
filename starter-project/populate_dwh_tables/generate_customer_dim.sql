insert into dwh.customer_dimension(
	customer_id,
	name,
	address,
	city,
	state,
	zip_code,
	area_code,
	phone_number,
	credit_limit,
	comments
)
select
	src.CUSTOMER_ID,
	src.NAME,
	src.ADDRESS,
	src.CITY,
	src.STATE,
	src.ZIP_CODE,
	src.AREA_CODE,
	src.PHONE_NUMBER,
	src.CREDIT_LIMIT,
	src.COMMENTS
from
  oltp.customer as src
left join dwh.customer_dimension as target on src.customer_id = target.customer_id
where target.customer_id is null
;