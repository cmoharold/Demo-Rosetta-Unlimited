CREATE DATABASE rosetta;

USE rosetta;

CREATE TABLE customers (
dwh_customer_key int(11) NOT NULL,
document_id varchar(255) DEFAULT NULL,
contact_phone1_id varchar(255) DEFAULT NULL,
customer_ini_day_key datetime DEFAULT NULL,
customer_end_day_key datetime DEFAULT NULL,
ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (dwh_customer_key)
);


insert into customers (dwh_customer_key,document_id,contact_phone1_id,customer_ini_day_key,customer_end_day_key) values (1,'11111111H','600456765','2012-06-01 0:00:00',null);
insert into customers (dwh_customer_key,document_id,contact_phone1_id,customer_ini_day_key,customer_end_day_key) values (2,'22222222J','606556789','2016-06-01 0:00:00','2019-06-01 0:00:00');
insert into customers (dwh_customer_key,document_id,contact_phone1_id,customer_ini_day_key,customer_end_day_key) values (3,'33333333N','600000004','2015-03-24 0:00:00',null);
insert into customers (dwh_customer_key,document_id,contact_phone1_id,customer_ini_day_key,customer_end_day_key) values (4,'44444444A','600000006','2018-06-01 0:00:00','2020-06-01 0:00:00');
insert into customers (dwh_customer_key,document_id,contact_phone1_id,customer_ini_day_key,customer_end_day_key) values (5,'55555555K','600056766','2019-12-30 0:00:00',null);
insert into customers (dwh_customer_key,document_id,contact_phone1_id,customer_ini_day_key,customer_end_day_key) values (6,'66666666Q','600000010','2011-06-11 0:00:00',null);
insert into customers (dwh_customer_key,document_id,contact_phone1_id,customer_ini_day_key,customer_end_day_key) values (7,'77777777B','600000012','2014-06-01 0:00:00',null);
insert into customers (dwh_customer_key,document_id,contact_phone1_id,customer_ini_day_key,customer_end_day_key) values (8,'88888888Y','600000014','2010-06-01 0:00:00','2020-01-11 0:00:00');
insert into customers (dwh_customer_key,document_id,contact_phone1_id,customer_ini_day_key,customer_end_day_key) values (9,'99999999L','600046567','2018-06-01 0:00:00','2018-06-01 0:00:00');
insert into customers (dwh_customer_key,document_id,contact_phone1_id,customer_ini_day_key,customer_end_day_key) values (10,'10000000W','600000018','2017-12-17 0:00:00','2019-06-01 0:00:00');
insert into customers (dwh_customer_key,document_id,contact_phone1_id,customer_ini_day_key,customer_end_day_key) values (11,'04352344P','600000001','2017-12-04 0:00:00',null);
insert into customers (dwh_customer_key,document_id,contact_phone1_id,customer_ini_day_key,customer_end_day_key) values (12,'34667788A','600000003','2018-12-27 0:00:00',null);
insert into customers (dwh_customer_key,document_id,contact_phone1_id,customer_ini_day_key,customer_end_day_key) values (13,'57453454P','600000005','2019-06-17 0:00:00','2019-07-11 0:00:00');
insert into customers (dwh_customer_key,document_id,contact_phone1_id,customer_ini_day_key,customer_end_day_key) values (14,'32453434C','600000007','2020-12-17 0:00:00','2020-12-30 0:00:00');
insert into customers (dwh_customer_key,document_id,contact_phone1_id,customer_ini_day_key,customer_end_day_key) values (15,'12334555T','600000009','2015-02-09 0:00:00','2015-04-09 0:00:00');

CREATE TABLE osp_services_cust (
service_id int(11) NOT NULL,
dwh_customer_key int(11) NOT NULL,
service_type int(11) DEFAULT NULL,
service_value varchar(255) DEFAULT NULL,
ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (service_id)
);

insert into osp_services_cust (service_id,dwh_customer_key,service_type,service_value) values (34,1,2,'600000000');
insert into osp_services_cust (service_id,dwh_customer_key,service_type,service_value) values (23,2,2,'600000002');
insert into osp_services_cust (service_id,dwh_customer_key,service_type,service_value) values (55,3,2,'600000004');
insert into osp_services_cust (service_id,dwh_customer_key,service_type,service_value) values (78,4,2,'600000006');
insert into osp_services_cust (service_id,dwh_customer_key,service_type,service_value) values (64,5,2,'600000008');
insert into osp_services_cust (service_id,dwh_customer_key,service_type,service_value) values (22,6,2,'600000010');
insert into osp_services_cust (service_id,dwh_customer_key,service_type,service_value) values (16,7,2,'600000012');
insert into osp_services_cust (service_id,dwh_customer_key,service_type,service_value) values (25,8,2,'600000014');
insert into osp_services_cust (service_id,dwh_customer_key,service_type,service_value) values (87,9,2,'600000016');
insert into osp_services_cust (service_id,dwh_customer_key,service_type,service_value) values (98,10,2,'600000018');
insert into osp_services_cust (service_id,dwh_customer_key,service_type,service_value) values (99,11,2,'600000001');
insert into osp_services_cust (service_id,dwh_customer_key,service_type,service_value) values (100,12,2,'600000003');
insert into osp_services_cust (service_id,dwh_customer_key,service_type,service_value) values (101,13,2,'600000005');
insert into osp_services_cust (service_id,dwh_customer_key,service_type,service_value) values (102,14,2,'600000007');
insert into osp_services_cust (service_id,dwh_customer_key,service_type,service_value) values (103,15,2,'600000009');

CREATE TABLE scoring (
scr_id int(11) NOT NULL,
document_id varchar(255) DEFAULT NULL,
riesgo varchar(255) DEFAULT NULL,
scr_date datetime DEFAULT NULL,
ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (scr_id)
);

insert into scoring (scr_id,document_id,riesgo,scr_date) values (3432423,'11111111H','BAJO','2012-06-01 0:00:00');
insert into scoring (scr_id,document_id,riesgo,scr_date) values (5676886,'22222222J','MEDIO','2016-06-01 0:00:00');
insert into scoring (scr_id,document_id,riesgo,scr_date) values (8845433,'33333333N','BAJO','2015-03-24 0:00:00');
insert into scoring (scr_id,document_id,riesgo,scr_date) values (9966345,'44444444A','BAJO','2018-06-01 0:00:00');
insert into scoring (scr_id,document_id,riesgo,scr_date) values (5587824,'55555555K','BAJO','2019-12-30 0:00:00');
insert into scoring (scr_id,document_id,riesgo,scr_date) values (7788899,'66666666Q','BAJO','2011-06-11 0:00:00');
insert into scoring (scr_id,document_id,riesgo,scr_date) values (1335445,'77777777B','BAJO','2014-06-01 0:00:00');
insert into scoring (scr_id,document_id,riesgo,scr_date) values (5556443,'88888888Y','BAJO','2010-06-01 0:00:00');
insert into scoring (scr_id,document_id,riesgo,scr_date) values (2356776,'99999999L','BAJO','2018-06-01 0:00:00');
insert into scoring (scr_id,document_id,riesgo,scr_date) values (3456567,'10000000W','ALTO','2017-12-17 0:00:00');
insert into scoring (scr_id,document_id,riesgo,scr_date) values (4657667,'04352344P','BAJO','2017-12-04 0:00:00');
insert into scoring (scr_id,document_id,riesgo,scr_date) values (1132345,'34667788A','BAJO','2018-12-27 0:00:00');
insert into scoring (scr_id,document_id,riesgo,scr_date) values (7765545,'57453454P','MEDIO','2019-06-17 0:00:00');
insert into scoring (scr_id,document_id,riesgo,scr_date) values (5567778,'32453434C','BAJO','2020-12-17 0:00:00');
insert into scoring (scr_id,document_id,riesgo,scr_date) values (8876666,'12334555T','BAJO','2015-02-09 0:00:00');

CREATE TABLE porta_orders (
portab_request_id int(11) NOT NULL,
directory_number_id varchar(255) DEFAULT NULL,
portab_doc_id varchar(255) DEFAULT NULL,
portab_type_des varchar(255) DEFAULT NULL,
donor_operator_des varchar(255) DEFAULT NULL,
receiving_operator_des varchar(255) DEFAULT NULL,
portab_order_date datetime DEFAULT NULL,
ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (portab_request_id)
);
--portas de clientes que vinieron a Orange
insert into porta_orders (portab_request_id,directory_number_id,portab_doc_id,portab_type_des,donor_operator_des,receiving_operator_des,portab_order_date) values (343,'600000001','04352344P','DIFERIDA','MOVISTAR','ORANGE','2017-12-04 0:00:00');
insert into porta_orders (portab_request_id,directory_number_id,portab_doc_id,portab_type_des,donor_operator_des,receiving_operator_des,portab_order_date) values (754,'600000003','34667788A','DIFERIDA','VODAFONE','ORANGE','2018-12-27 0:00:00');

--portas de clientes que se fueron de Orange
insert into porta_orders (portab_request_id,directory_number_id,portab_doc_id,portab_type_des,donor_operator_des,receiving_operator_des,portab_order_date) values (890,'600000002','22222222J','DIFERIDA','ORANGE','MOVISTAR','2019-06-01 0:00:00');
insert into porta_orders (portab_request_id,directory_number_id,portab_doc_id,portab_type_des,donor_operator_des,receiving_operator_des,portab_order_date) values (891,'600000006','44444444A','DIFERIDA','ORANGE','VODAFONE','2020-06-01 0:00:00');
insert into porta_orders (portab_request_id,directory_number_id,portab_doc_id,portab_type_des,donor_operator_des,receiving_operator_des,portab_order_date) values (892,'600000014','88888888Y','DIFERIDA','ORANGE','MOVISTAR','2020-01-11 0:00:00');
insert into porta_orders (portab_request_id,directory_number_id,portab_doc_id,portab_type_des,donor_operator_des,receiving_operator_des,portab_order_date) values (893,'600000016','99999999L','DIFERIDA','ORANGE','VODAFONE','2018-06-01 0:00:00');
insert into porta_orders (portab_request_id,directory_number_id,portab_doc_id,portab_type_des,donor_operator_des,receiving_operator_des,portab_order_date) values (894,'600000018','10000000W','DIFERIDA','ORANGE','MOVISTAR','2019-06-01 0:00:00');
insert into porta_orders (portab_request_id,directory_number_id,portab_doc_id,portab_type_des,donor_operator_des,receiving_operator_des,portab_order_date) values (778,'600000005','57453454P','DIFERIDA','ORANGE','MOVISTAR','2019-06-17 0:00:00');
insert into porta_orders (portab_request_id,directory_number_id,portab_doc_id,portab_type_des,donor_operator_des,receiving_operator_des,portab_order_date) values (112,'600000007','32453434C','DIFERIDA','ORANGE','VODAFONE','2020-12-17 0:00:00');
insert into porta_orders (portab_request_id,directory_number_id,portab_doc_id,portab_type_des,donor_operator_des,receiving_operator_des,portab_order_date) values (887,'600000009','12334555T','DIFERIDA','ORANGE','VODAFONE','2015-02-09 0:00:00');