use vvr;
create table tt (id int, name varchar(20), salary int, city varchar(50));
insert into tt values(1, "doreman ", 50000, "bnglr"), (2, "nobita", 400000, "bnglr"), (3, "suniyoo",800000, "dehli"), (4, "giyan", 300000, "hyd"), (5, "sujuka", 600000, "mumbai"),
(6, "doremi ", 50000, "bnglr"), (7, "dekisuke", 400000, "bnglr"), (8, "sir",800000, "dehli"), (9, "nobita_mom", 300000, "hyd"), (10, "sujuka_mom", 600000, "mumbai");
insert into tt values (1, "doreman ", 50000, "bnglr"), (2, "nobita", 400000, "bnglr"), (3, "suniyoo",800000, "dehli"), (4, "giyan", 300000, "hyd"), (5, "sujuka", 600000, "mumbai");
select distinct * from tt;
select distinct id,salary from tt;
select * from tt order by salary  asc;
select * from tt limit 7;
select * from tt limit 2 , 10 ;
select * from tt where name like "____m";
select * from tt order by salary desc limit 1,1;
select * from tt order by salary asc limit 2,1;
select distinct salary from tt;
select distinct city from tt ;
select * from tt where name like "______";
select name from tt where length(name)=6;
