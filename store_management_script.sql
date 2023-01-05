show databases;

create database store_management;

use store_management;

create table status_group (status_group_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, status_group_name varchar(15) NOT NULL, status_group_description varchar(30));

select * from status_group;

create table status(status_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, status_name varchar(15) NOT NULL, status_description varchar(50),status_group_id int);

select * from status;

create table brand (brand_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, brand_name varchar(15) NOT NULL, brand_description varchar(50),brand_status varchar(8));

select * from brand;

create table product_category (category_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, category_name varchar(15) NOT NULL, category_description varchar(50),category_status varchar(8));

select * from product_category;

create table employee_profile (profile_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, profile_name varchar(15) NOT NULL, profile_description varchar(50),profile_status varchar(8));

select * from employee_profile;

create table payment_mode (payment_mode_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, payment_mode_name varchar(10) NOT NULL, payment_mode_description varchar(50));

select * from payment_mode;

create table employee (emp_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, first_name varchar(15) NOT NULL, last_name varchar(15), contact_number varchar(13), residential_address varchar(100), communication_address varchar(100), employee_profile int, employee_status varchar(8));

select * from employee;

create table customer_address (address_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, address_type varchar(15) NOT NULL, line1 varchar(20), line2 varchar(20), line3 varchar(20), pincode int , state varchar(15), customer_id int, overall_default varchar(10) );

select * from customer_address;

create table customer (customer_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, first_name varchar(15) NOT NULL, last_name varchar(15), contact_number varchar(13), gender varchar(10), birth_date date , customer_status varchar(8));

select * from customer;

create table product (product_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, product_name varchar(15) NOT NULL, product_description varchar(50), category_id int, brand_id int, product_quantity int NOT NULL , product_price int NOT NULL, catalog_price int NOT NULL, sgst_percentage int, cgst_percentage int,product_barcode varchar(100), validity varchar(1), validity_period int , product_status varchar(8));
 
 select * from product;
 
 create table order_payment (payment_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, order_item_id int ,amount int, remarks varchar(50),payment_date date, transaction_id int, payment_mode int, payment_status varchar(8));
 
 select * from order_payment;
 
  create table invoice (invoice_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, order_id int , emp_id int, invoice_date date, invoice_status varchar(8), created_date datetime, created_by int, updated_date datetime, updated_by int);

select * from invoice;

  create table offer (offer_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, order_name varchar(20) , offer_start_date date, offer_end_date date, offer_description varchar(50), offer_approvedby varchar(20), banner_location varchar(50), offer_status varchar(8), created_date datetime, created_by int, updated_date datetime, updated_by int);
  
  select * from offer;

  create table quotation_enquiry (quotation_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, quotation_date date, emp_id int, customer_name varchar(15), mobile_number varchar(13), address varchar(50), remarks varchar(50), quotation_status varchar(8), created_date datetime, created_by int, updated_date datetime, updated_by int);

select * from quotation_enquiry;

  create table quotation_enquiry_items (quotation_item_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, quotation_id int, product_id int, offer_id int , quantity int , unit_price int,  created_date datetime, created_by int, updated_date datetime, updated_by int);
  
  select * from quotation_enquiry_items;
  
    create table offer_price_list (price_list_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, product_id int , offer_id int, offer_price int,  created_date datetime, created_by int, updated_date datetime, updated_by int);

select * from offer_price_list;

create table orders (order_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, customer_id int, emp_id int, offer_id int, paid_amount int, remaining_amount int, total_amount int, date date, gstin_number varchar(15), pan_number varchar(12),remarks varchar(50), order_status varchar(8) ,  created_date datetime, created_by int, updated_date datetime, updated_by int);

select * from orders;

create table order_items (order_item_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, order_id int, product_id int, order_quantity int, unit_price int, discount_amount int, discount_percentage int, validity varchar(1), validity_start_date date, validity_end_date date, sgst_percentage int, sgst_price int, cgst_percentage int, cgst_price int, created_date datetime, created_by int, updated_date datetime, updated_by int);

select * from order_items;

create table order_replacement (order_replacement_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, order_id int, emp_id int, replacement_date date, replacement_status varchar(8), created_date datetime, created_by int, updated_date datetime, updated_by int);

select * from order_replacement;

create table order_replacement_items (order_replacement_item_id int NOT NULL AUTO_INCREMENT PRIMARY KEY, validity varchar(1), validity_start_date date, validity_end_date date, order_replacement_id int, replacement_charges int, quantity int, sgst_percentage int, sgst_price int, cgst_percentage int, cgst_price int, remarks varchar(50), notes varchar(50),created_date datetime, created_by int, updated_date datetime, updated_by int);

select * from order_replacement_items;

show tables;
