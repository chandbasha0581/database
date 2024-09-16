
# creating the EER Diagram & describing the relationship among the tables

create database moblie;
use moblie;
# First table
create table customer_info (Customer_ID varchar(25) primary key, Customer_Name varchar(50), Address varchar(100), Mobile bigint, Email varchar(30));

#Second table

create table distributor (Distributor_ID varchar(25) primary key, Distributor_Name varchar(50), Address varchar(100), Mobile bigint, Email varchar(30));
Select * from distributor;

#Third table
  
create table mobile_master (IME_No varchar(25) primary key, Model_Name varchar(50), Manufacturer varchar(100),
Date_Of_Manufac date, Warranty_in_year int(11), Price Decimal(7.2) , Distributor_ID varchar(25), foreign key(Distributor_ID) references distributor (Distributor_ID));
Select * from mobile_master;

#fourth table
  
create table sale_info (Sales_ID int(11) primary key, Sales_Date DATE ,  Price Int(11), Discount INT(11), Net_Amount INT(11), /*Customer_ID varchar(10),*/
Model_Name varchar(20), IME_No varchar(25), foreign key(IME_No) references mobile_master (IME_No));# foreign key(Customer_ID) references customer_info (Customer_ID));
desc saleinfo;

# fifth table
  
create table moblie_specification (Dimension varchar(20), Weight varchar(50), Display_Type varchar(100),Display_Size varchar(100), Internal_mem_in_MB int(11), 
Memory_Card_Capacity_GB int(11), Network_3G varchar(5), GPRS varchar(5), EDGE varchar(5), Bluethoot varchar(5), Camera varchar(5), camera_Quality varchar(5),
OS varchar(20), Battery_Life_Hrs INT(11), IME_no varchar(10),  foreign key(IME_No) references mobile_master (IME_No));

