create database Hello;
use Hello;
create table employee (id int, name varchar(100), age int, salary bigint);
alter table employee add column name varchar(100) after id;
insert into employee values (1, "chand", 24, 50000);
insert into employee values (2, "siva", 44, 30000);
insert into employee values (3, "shasha", 34, 50000);
insert into employee values (4, "shahab", 50, 70000);
insert into employee values (5, "vasid", 48, 90000);
insert into employee values (6, "manoj", 28, 40000);
insert into employee values (7, "suhail", 35, 80000);
insert into employee (id,name) 
values 
(8 , "prakesh"),
(9 , "megha"),
(10 , "lekha");
insert into employee (id,name,age,salary) values (null,null,null,null);
alter table employee 
add column email varchar(100), 
add column gender varchar(100);
alter table employee modify column age varchar(20);
alter table employee add column phno int after age ;
alter table employee drop column phno;
alter table employee add column city varchar(25);
create table bheem (cartoon_no int, cartoon_hero varchar(50), dob date);
insert into bheem (cartoon_no, cartoon_hero, dob) values (1, "chota bheem", "2002-02-11"), (2, "raju", "2002-02-19"), (3, "jaggu", "2009-12-20")  ;
alter table bheem rename to superbheem;
alter table superbheem rename column cartoon_no  to cartoon_channel ;
select * from superbheem;
select * from employee;
show databases;
show tables;
desc employee;
