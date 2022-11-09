-- create TIME_DIMENSION table
drop table if exists starter_project.TIME_DIMENSION;

CREATE TABLE starter_project.TIME_DIMENSION(
    Day_Key numeric,
    Actual_Date DATE,
    Day_Of_Month numeric(2),
    Month varchar(9),
    Quarter numeric(1),
    Year numeric(4),
CONSTRAINT Which_Quarter CHECK (Quarter in (1,2,3,4))
);

--use ALTER TABLE command to define the PK of TIME_DIMENSION
ALTER TABLE starter_project.TIME_DIMENSION
ADD CONSTRAINT TIME_DIMENSION_PK PRIMARY KEY (Day_Key) serial;

-- create EMPLOYEE_DIMENSION table
drop table if exists starter_project.EMPLOYEE_DIMENSION;

CREATE TABLE starter_project.EMPLOYEE_DIMENSION(
 	emp_key serial,
 	employee_id numeric(4),
    first_name varchar(15),
 	middle_initial varchar(1),
 	last_name varchar(15),
 	sex char(1),
 	manager_id numeric(4),
 	hire_date date,
 	salary numeric(7,2),
 	commission numeric(7,2),
 	job_code numeric(2),
 	dob date
);

--use ALTER TABLE command to define the PK of EMPLOYEE_DIMENSION
ALTER TABLE starter_project.EMPLOYEE_DIMENSION
ADD CONSTRAINT EMPLOYEE_DIMENSION_PK PRIMARY KEY (emp_key);

-- create CUSTOMER_DIMENSION table
drop table if exists starter_project.CUSTOMER_DIMENSION;

CREATE TABLE starter_project.CUSTOMER_DIMENSION(
 	cust_key serial,
 	customer_id numeric(6),
 	name varchar(45),
 	address varchar(40),
 	city varchar(30),
 	state varchar(2),
 	zip_code varchar(9),
 	area_code numeric(3),
 	phone_number numeric(7),
 	credit_limit numeric(9,2),
 	comments varchar(256)
);


--use ALTER TABLE command to define the PK of CUSTOMER_DIMENSION
ALTER TABLE starter_project.CUSTOMER_DIMENSION
ADD CONSTRAINT CUSTOMER_DIMENSION_PK PRIMARY KEY (cust_key);


-- create PRODUCT_DIMENSION table
drop table if exists starter_project.product_dimension;

CREATE TABLE starter_project.product_dimension
(
  	prod_key serial,
  	product_id numeric (6),
  	product_description varchar(30),
  	product_code varchar(4),
  	brand_name varchar(10), -- the first string extracted from product_description
 	list_price numeric (8,2),
  	min_price numeric (8,2),
  	price_start_date date, -- starting date for the list price
  	price_end_date date, -- end date for the list price
  	current_flag varchar(1) -- True if price_hist.end_date = NULL
);

-- use ALTER TABLE command to define the PK of PRODUCT_DIMENSION
ALTER TABLE starter_project.product_dimension
ADD CONSTRAINT prod_dimension_PK PRIMARY KEY (prod_key);

-- create SALES_FACT table
drop table if exists starter_project.sales_fact;

CREATE TABLE starter_project.sales_fact
(
  	orderdate_key int,
  	prod_key int,
  	cust_key int,
  	emp_key int,
  	sales_dollar_amount numeric (10,2),
  	quantity numeric (4)
);

-- use ALTER TABLE command to define the PK of SALES_FACT
ALTER TABLE starter_project.sales_fact
ADD CONSTRAINT sales_fact_PK PRIMARY KEY (orderdate_key, prod_key, cust_key, emp_key);

-- use ALTER TABLE command to set each foreign key 
-- from dimension tables to the sales_fact table
ALTER TABLE starter_project.sales_fact
    ADD CONSTRAINT sales_fact_FK1 FOREIGN KEY (orderdate_key) 
    REFERENCES starter_project.time_dimension (day_key);

ALTER TABLE starter_project.sales_fact
    ADD CONSTRAINT sales_fact_FK2 FOREIGN KEY (prod_key) 
    REFERENCES starter_project.product_dimension(prod_key);

ALTER TABLE starter_project.sales_fact
    ADD CONSTRAINT sales_fact_FK3 FOREIGN KEY (cust_key) 
    REFERENCES starter_project.Customer_dimension (cust_key);

ALTER TABLE starter_project.sales_fact
    ADD CONSTRAINT sales_fact_FK4 FOREIGN KEY (emp_key)
    REFERENCES starter_project.Employee_dimension (emp_key);