create database TCS;
use TCS;
create table thopstech (id int, name varchar(100), age int, marks int);
insert into thopstech values (1, "chand",20,50) , (2, "vishnu",30,63) , (3, "bharat",23,75) ,
(4, "revanth", 40, 76) , (5,"manoj", 33, 85) , (6, "tarun",38, 90) , (7, "shasha",50,95) ,
(8, "shahab",22,96) , (9,"leelashankar",45,60) , (10, "siva",28,55);
alter table thopstech add column salary int first;
alter table thopstech add column dob date after name;
alter table thopstech drop column age;
alter table thopstech modify id varchar(50);
alter table thopstech rename column marks to percentage;
alter table thopstech add column ph_no bigint;
alter table thopstech drop column percentage;
alter table thopstech modify column name varchar(200) , add column gender int;
show databases;
# database;
desc thopstech;
select * from thopstech;
select name,salary from thopstech;
alter table thopstech rename to  THOPS;
alter table THOPS add address varchar(255);
select * from THOPS;
#alter table THOPS drop columns;
drop table THOPS;
DROP database TCS;
create database pub;
use pub;
create table name_bar (no_of_bottles int, name_of_brand varchar(100), cost_of_bottles int);
insert into name_bar values (1, "spirit", 12), (2, "thumpsup" ,20), (3,"pepsi",15), (4,"pulp", 25), (5,"COCO COCA", 35);
insert into name_bar values (null, "fruity", null) ,(null, "slice", null);
alter table name_bar add column stuff varchar(115);
insert into name_bar values (null,null,null, "spicypeanuts"), (null,null,null,"chips");
alter table name_bar rename column name_of_brand to bottle_name;
update name_bar set bottle_name=case
when no_of_bottles=4 then "magic_moments"
else bottle_name
end;
update name_bar set no_of_bottles=case
when bottle_name="fruity" then 6
when bottle_name="slice" then 7
else no_of_bottles
end;
update name_bar set stuff=case
when no_of_bottles=6 then "chicken kababa"
when no_of_bottles=7 then "leg piece kabab"
else stuff
end;
insert into name_bar values (8, "mirinda",18, "shish kabab"), (9,"fizz",10,"fish kabab");
update name_bar set cost_of_bottles=case
when no_of_bottles=1 then 22
when no_of_bottles=2 then 38
else cost_of_bottles
end;

select * from name_bar;