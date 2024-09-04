
# Here we have learn, to giving the default,not null,check and unique values to the columns 

# Here  we see that table is creating the constraints while creating the table

create table voter_list(v_id int not null unique,v_name varchar(255) not null default "basha",v_adderss varchar(100) not null,v_phno bigint not null unique, 
v_fathername varchar(100)not null, v_dob date not null, v_age int not null, v_aadhaar bigint not null unique,check(v_age>18));
desc voter_list;


create table adhaar_details(s_no int, aadhaar_no bigint,name varchar(100) default"raju",father_name varchar(225),mother_name varchar(255),dob date default "2007-01-01", 
address varchar(255), pincode int,ph_no bigint default 9999999999,pancard bigint,district varchar(100),state varchar(255) default "maharashta",v_id int, check(s_no>1000));
desc adhaar_details;


create table emp (id int, name varchar(100), age int, city varchar(100));
desc emp;
create table employee (e_id int,e_phno int,e_name varchar(100),salary int,experince varchar(10),domain char,hike char,
address varchar(50),promotion varchar(50), aadhaar bigint, v_id int, pancard bigint);

# Here we see that table is created without the constraints, so constraints are passing to the table 

create table student (id int, name varchar(25), age int, aadhaar bigint,  branch varchar(10), city varchar(25), course varchar(10),pincode int);
desc student;
alter table student modify id int unique; 				#giving the unique value to the column by using modify after the creation of the table
alter table student modify aadhaar bigint unique;		#giving the unique value to the column by using modify after the creation of the table
alter table student modify name varchar(20) not null;	#giving the not null value to the column by using modify after the creation of the table
alter table student rename column pnicode to pincode;
alter table student modify pincode varchar(20) not null;	#giving the not null value to the column by using modify after the creation of the table
alter table student modify age int check(age>23);			#giving the check value to the column by using modify after the creation of the table for checking the condition is true or false
alter table student modify city varchar(20) default "bnglr";	#giving the default value to the column by using modify after the creation of the table
alter table student modify course varchar(20) default "java";	#giving the default value to the column by using modify after the creation of the table
alter table student modify branch varchar(20) default "CSE";	#giving the default value to the column by using modify after the creation of the table