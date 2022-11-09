--- Table Product
drop table if exists oltp.product cascade;

create table oltp.product (
	product_id numeric(6) not null,
	description varchar(30),
	product_code char(4)
);

alter table oltp.product
  add constraint Product_PK primary key (product_id);

--- Table price_hist
drop table if exists oltp.price_hist cascade;

create table oltp.price_hist (
	product_id numeric(6) not null,
	list_price numeric(8, 2),
	min_price numeric(8, 2),
	start_date date not null,
	end_date date
);

alter table oltp.price_hist
  add constraint price_hist_pk primary key (product_id, list_price);
  
alter table oltp.price_hist
  add constraint price_hist_fk foreign key (product_id)
  references oltp.product(product_id);

--- Table emp
DROP TABLE if exists oltp.emp CASCADE;
CREATE TABLE oltp.emp (
   employee_id                numeric(4) NOT NULL,
   first_name                 VARCHAR(15) NOT NULL,
   middle_initial             VARCHAR(1),
   last_name                  VARCHAR(15) NOT NULL,
   sex                        CHAR(1) NOT NULL,
   manager_id                 numeric(4),
   hire_date                  DATE,
   salary                     numeric(7,2),
   commission                 numeric(7,2),
   job_code		      numeric(2),
   dob                        DATE
);
ALTER TABLE oltp.emp
    ADD CONSTRAINT emp_PK PRIMARY KEY (employee_id);

--- Table customer
DROP TABLE if exists oltp.customer CASCADE;
CREATE TABLE oltp.customer (
   CUSTOMER_ID                numeric(6) NOT NULL,
   NAME                       varchar(45),
   ADDRESS                    varchar(40),
   CITY                       varchar(30),
   STATE                      varchar(2),
   ZIP_CODE                   varchar(9),
   AREA_CODE                  numeric(3),
   PHONE_number             numeric(7),
   SALESPERSON_ID             numeric(4),
   CREDIT_LIMIT               numeric(9,2),
   COMMENTS                   varchar(256));

ALTER TABLE oltp.customer
    ADD CONSTRAINT customer_PK PRIMARY KEY (customer_id);

ALTER TABLE oltp.customer
    ADD CONSTRAINT customer_FK FOREIGN KEY (salesperson_id) 
    REFERENCES oltp.emp (employee_id);

--- Table sales order
DROP TABLE if exists oltp.sales_order CASCADE;

CREATE TABLE oltp.sales_order (
   order_id                    numeric(4) NOT NULL,
   order_date                  DATE,
   customer_id                 numeric(6) NOT NULL,
   ship_date                   DATE,
   total                       numeric(8,2));


ALTER TABLE oltp.sales_order
    ADD CONSTRAINT Sales_Order_PK PRIMARY KEY (order_id);

ALTER TABLE oltp.sales_order
    ADD CONSTRAINT Sales_Order_FK FOREIGN KEY (customer_id) 
    REFERENCES oltp.customer (customer_id);

--- Table line items
DROP TABLE if exists oltp.line_item CASCADE;

CREATE TABLE oltp.line_item (
   ORDER_ID                    numeric(4) NOT NULL,
   ITEM_SEQ                    numeric(4) NOT NULL,
   PRODUCT_ID                  numeric(6) NOT NULL,
   ACTUAL_PRICE                numeric(8,2),
   QUANTITY                    numeric(8),
   SUBTOTAL                    numeric(8,2));

ALTER TABLE oltp.line_item
    ADD CONSTRAINT line_item_FK1 FOREIGN KEY (order_id) 
    REFERENCES oltp.sales_order (order_id);

ALTER TABLE oltp.line_item
    ADD CONSTRAINT line_item_FK2 FOREIGN KEY (product_id) 
    REFERENCES oltp.product (product_id);

ALTER TABLE oltp.line_item
    ADD CONSTRAINT line_item_PK PRIMARY KEY (order_id, item_seq);