-- Data for Order Schema
-- Data for Employee table (6 employees)

INSERT INTO starter_project.EMP VALUES (7369,'JOHN','F','HENNESSEY','M',
7902,'2000-04-17',800,NULL,20,'1951-11-23');
INSERT INTO starter_project.EMP VALUES (7499,'KEVIN','J','ALLEN','M',
7698,'1995-02-20',1600,300,30,'1955-03-20');
INSERT INTO starter_project.EMP VALUES (7505,'JEAN','K','KELLY','F',
7839,'1995-04-04',2850,NULL,13,'1977-01-03');
INSERT INTO starter_project.EMP VALUES (7506,'LYNN','S','DENNIS','F',
7839,'2000-05-01',2750,NULL,23,'1981-04-29');
INSERT INTO starter_project.EMP VALUES (7507,'LESLIE','D','BAKKER','F',
7839,'1995-06-10',2200,NULL,14,'1961-05-13');
INSERT INTO starter_project.EMP VALUES (7508,'CYNTHIA','D','WARD','F',
7698,'1995-02-22',1250,500,30,'1976-06-18');

-- Data for Customer Table (9 customers)
INSERT INTO starter_project.CUSTOMER(customer_id,name,address,city,state,zip_code,area_code,
phone_number,salesperson_id,credit_limit) VALUES
(100,'JOCKSPORTS','345 VIEWRIDGE','BELMONT','CA','96711',
415,5986609,7369,5000);

INSERT INTO starter_project.CUSTOMER(customer_id,name,address,city,state,zip_code,area_code,
phone_number,salesperson_id,credit_limit) VALUES
(101,'TKB SPORT SHOP','490 BOLI RD.','REDWOOD CITY','CA','94061',
415,3681223,7369,10000);

INSERT INTO starter_project.CUSTOMER(customer_id,name,address,city,state,zip_code,area_code,
phone_number,salesperson_id,credit_limit) VALUES
(102,'VOLLYRITE','9722 HAMILTON','BURLINGAME','CA','95133',
415,6443341,7499,7000);

INSERT INTO starter_project.CUSTOMER(customer_id,name,address,city,state,zip_code,area_code,
phone_number,salesperson_id,credit_limit) VALUES
(103,'JUST TENNIS','HILLVIEW MALL','BURLINGAME','CA','97544',
415,6779312,7499,3000);

INSERT INTO starter_project.CUSTOMER(customer_id,name,address,city,state,zip_code,area_code,
phone_number,salesperson_id,credit_limit) VALUES
(104,'EVERY MOUNTAIN','574 SURRY RD.','CUPERTINO','CA','93301',
408,9962323,7505,10000);

INSERT INTO starter_project.CUSTOMER(customer_id,name,address,city,state,zip_code,area_code,
phone_number,salesperson_id,credit_limit) VALUES
(105,'K + T SPORTS','3476 EL PASEO','SANTA CLARA','CA','91003',
408,3769966,7505,5000);

INSERT INTO starter_project.CUSTOMER(customer_id,name,address,city,state,zip_code,area_code,
phone_number,salesperson_id,credit_limit) VALUES
(106,'CENTURY SHOP','8 DAGMAR DR.','HUNTINGTON','NY','11743',
516,5553006,7506,4000);


INSERT INTO starter_project.CUSTOMER(customer_id,name,address,city,state,zip_code,area_code,
phone_number,salesperson_id,credit_limit) VALUES
(107,'THE TOUR','2500 GARDNER RD.','SOMERVILLE','MA','02144',
617,5556673,7507,5000);

INSERT INTO starter_project.CUSTOMER(customer_id,name,address,city,state,zip_code,area_code,
phone_number,salesperson_id,credit_limit) VALUES
(108,'FITNESS FIRST','5000 85TH ST.','JACKSON HEIGHTS','NY','11372',
718,5558710,7508,4000);

--- Table Products

INSERT INTO starter_project.PRODUCT values (100860,'ACE TENNIS RACKET I','IGAA');
INSERT INTO starter_project.PRODUCT values (100861,'ACE TENNIS RACKET II','IHAA');
INSERT INTO starter_project.PRODUCT values (100862,'ACE TENNIS BALLS-3 PACK','IHAA');
INSERT INTO starter_project.PRODUCT values (100863,'ACE TENNIS BALLS-6 PACK','IHAA');
INSERT INTO starter_project.PRODUCT values (100864,'ACE TENNIS NET','ACAA');
INSERT INTO starter_project.PRODUCT values (100865,'SP TENNIS RACKET','UPAA');
INSERT INTO starter_project.PRODUCT values (100866,'SP JUNIOR RACKET','UCAA');
INSERT INTO starter_project.PRODUCT values (100867,'RH "GUIDE TO TENNIS"','UGAA');
INSERT INTO starter_project.PRODUCT values (100868,'SB ENERGY BAR-6 PACK','AGAA');
INSERT INTO starter_project.PRODUCT values (100869,'SB VITA SNACK-6 PACK','AGAA');
INSERT INTO starter_project.PRODUCT values (100870,'WIFF SOFTBALL BAT I','IGAA');
INSERT INTO starter_project.PRODUCT values (100871,'WIFF SOFTBALL BAT II','ICAA');

-- Data for Price Hist Table (32 records)
INSERT INTO starter_project.PRICE_HIST values (100860, 30, 24, '1999-01-01', '2000-12-31');
INSERT INTO starter_project.PRICE_HIST values (100860, 36, 30, '2001-01-01', '2003-12-31');
INSERT INTO starter_project.PRICE_HIST values (100860, 42, 38, '2004-01-01', '2007-12-31');
INSERT INTO starter_project.PRICE_HIST values (100860, 52, 46.4, '2008-01-01', NULL);
INSERT INTO starter_project.PRICE_HIST values (100861, 54, 50.5, '1998-06-01', '2001-12-31');
INSERT INTO starter_project.PRICE_HIST values (100861, 56, 54, '2002-01-01', '2005-12-31');
INSERT INTO starter_project.PRICE_HIST values (100861, 58, 56, '2006-01-01', '2008-12-31');
INSERT INTO starter_project.PRICE_HIST values (100861, 60,  58, '2009-01-01', NULL);
INSERT INTO starter_project.PRICE_HIST values (100862, 45, 36, '2000-06-01', NULL);
INSERT INTO starter_project.PRICE_HIST values (100863, 39, 31.2, '1999-01-01', '1999-12-31');
INSERT INTO starter_project.PRICE_HIST values (100863, 42, 39.4, '2000-01-01', '2003-06-15');
INSERT INTO starter_project.PRICE_HIST values (100863, 46, 43, '2003-06-16', NULL);
INSERT INTO starter_project.PRICE_HIST values (100864, 3, 1.9, '1999-01-01', '1999-12-01');
INSERT INTO starter_project.PRICE_HIST values (100864, 4.2, 3.8, '2000-01-01', '2004-12-01');
INSERT INTO starter_project.PRICE_HIST values (100864, 5.2, 4.8, '2005-01-01', '2007-12-01');
INSERT INTO starter_project.PRICE_HIST values (100864, 6.8, 5.4, '2008-01-01', NULL);
INSERT INTO starter_project.PRICE_HIST values (100865, 24, 18, '2000-02-15', NULL);
INSERT INTO starter_project.PRICE_HIST values (100866, 4, 3.5, '1999-01-01', NULL);
INSERT INTO starter_project.PRICE_HIST values (100867, 30, 24, '2000-06-01', NULL);
INSERT INTO starter_project.PRICE_HIST values (100868, 3.4, 2.8, '1999-08-18', NULL);
INSERT INTO starter_project.PRICE_HIST values (100869, 27.8, 22.3, '1999-01-01', '1999-12-31');
INSERT INTO starter_project.PRICE_HIST values (100869, 33.5, 27, '2000-01-01', '2002-05-31');
INSERT INTO starter_project.PRICE_HIST values (100869, 39.3, 34, '2002-06-01', NULL);
INSERT INTO starter_project.PRICE_HIST values (100870, 25, 20, '2000-01-01', '2000-12-31');
INSERT INTO starter_project.PRICE_HIST values (100870, 30, 25, '2001-01-01', '2002-07-01');
INSERT INTO starter_project.PRICE_HIST values (100870, 35, 30, '2002-07-02', '2004-12-01');
INSERT INTO starter_project.PRICE_HIST values (100870,  40, 35, '2005-01-01', NULL);
INSERT INTO starter_project.PRICE_HIST values (100871, 23, 18, '2000-01-01', '2005-12-31');
INSERT INTO starter_project.PRICE_HIST values (100871, 27, 24, '2006-01-01', '2006-12-31');
INSERT INTO starter_project.PRICE_HIST values (100871, 30, 28, '2007-01-01', '2007-12-31');
INSERT INTO starter_project.PRICE_HIST values (100871, 33, 31, '2008-01-01', '2008-12-31');
INSERT INTO starter_project.PRICE_HIST values (100871, 40, 34, '2009-01-01', NULL);

--- Table sales order
INSERT INTO starter_project.SALES_ORDER VALUES (601, '2001-01-07', 101, '2001-01-08', 3984);
INSERT INTO starter_project.SALES_ORDER VALUES (602, '2001-01-11', 101, '2001-01-11', 708);
INSERT INTO starter_project.SALES_ORDER VALUES (603, '2001-01-15', 100, '2001-01-20', 540);
INSERT INTO starter_project.SALES_ORDER VALUES (604, '2000-05-01', 100, '2000-05-30', 264);
INSERT INTO starter_project.SALES_ORDER VALUES (605, '2000-06-05', 102, '2000-06-20', 50303.4);
INSERT INTO starter_project.SALES_ORDER VALUES (606, '2000-05-01', 102, '2000-05-29', 16200);
INSERT INTO starter_project.SALES_ORDER VALUES (607, '2000-06-15', 103, '2000-06-30', 2300);
INSERT INTO starter_project.SALES_ORDER VALUES (608, '2000-07-14', 103, '2000-07-30', 6000);
INSERT INTO starter_project.SALES_ORDER VALUES (609, '2000-07-14', 104, '2000-07-30', 5500);
INSERT INTO starter_project.SALES_ORDER VALUES (610, '2000-08-01', 104, '2000-08-15', 26540);
INSERT INTO starter_project.SALES_ORDER VALUES (611, '2000-07-18', 105, '2000-07-18', 1250);
INSERT INTO starter_project.SALES_ORDER VALUES (612, '2000-07-25', 105, '2000-07-25', 141);
INSERT INTO starter_project.SALES_ORDER VALUES (613, '2000-07-25', 106, '2000-07-26', 23000);
INSERT INTO starter_project.SALES_ORDER VALUES (614, '2000-06-05', 107, '2000-06-05', 540);
INSERT INTO starter_project.SALES_ORDER VALUES (615, '2001-03-12', 108, '2001-03-12', 1500);

--- Table line_item
-- Data for line_item (33 records)
INSERT INTO starter_project.LINE_ITEM values (612,1,100861,54,1,54);
INSERT INTO starter_project.LINE_ITEM values (612,3,100862,45,1,45);
INSERT INTO starter_project.LINE_ITEM values (612,2,100863,42,1,42);
INSERT INTO starter_project.LINE_ITEM values (601,1,100860,36,100,3600);
INSERT INTO starter_project.LINE_ITEM values (601,3,100870,30,12,360);
INSERT INTO starter_project.LINE_ITEM values (601,2,100865,24,1,24);
INSERT INTO starter_project.LINE_ITEM values (602,1,100870,30,20,600);
INSERT INTO starter_project.LINE_ITEM values (602,2,100860,36,3,108);
INSERT INTO starter_project.LINE_ITEM values (603,1,100861,54,2,108);
INSERT INTO starter_project.LINE_ITEM values (603,2,100860,36,12,432);
INSERT INTO starter_project.LINE_ITEM values (604,1,100860,30,7,210);
INSERT INTO starter_project.LINE_ITEM values (604,2,100861,54,1,54);
INSERT INTO starter_project.LINE_ITEM values (605,1,100868,3.4,1,3.4);
INSERT INTO starter_project.LINE_ITEM values (605,2,100871,23,200,4600);
INSERT INTO starter_project.LINE_ITEM values (605,3,100860,30,444,13320);
INSERT INTO starter_project.LINE_ITEM values (605,4,100870,25,1000,25000);
INSERT INTO starter_project.LINE_ITEM values (605,5,100861,54,20,1080);
INSERT INTO starter_project.LINE_ITEM values (605,6,100863,42,150,6300);
INSERT INTO starter_project.LINE_ITEM values (606,1,100860,30,10,300);
INSERT INTO starter_project.LINE_ITEM values (606,2,100868,3.4,1000,3400);
INSERT INTO starter_project.LINE_ITEM values (606,3,100870,25,500,12500);
INSERT INTO starter_project.LINE_ITEM values (607,1,100871,23,100,2300);
INSERT INTO starter_project.LINE_ITEM values (608,1,100860,30,200,6000);
INSERT INTO starter_project.LINE_ITEM values (609,1,100865,24,150,3600);
INSERT INTO starter_project.LINE_ITEM values (609,2,100866,4,100,400);
INSERT INTO starter_project.LINE_ITEM values (609,3,100860,30,50,1500);
INSERT INTO starter_project.LINE_ITEM values (610,1,100860,30,100,3000);
INSERT INTO starter_project.LINE_ITEM values (610,2,100871,23,1000,23000);
INSERT INTO starter_project.LINE_ITEM values (610,3,100861,54,10,540);
INSERT INTO starter_project.LINE_ITEM values (611,1,100870,25,50,1250);
INSERT INTO starter_project.LINE_ITEM values (613,1,100871,23,1000,23000);
INSERT INTO starter_project.LINE_ITEM values (614,1,100861,54,10,540);
INSERT INTO starter_project.LINE_ITEM values (615,1,100870,30,50,1500);