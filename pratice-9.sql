use vvr;
create table functionss(fun_name varchar(25), no_of_functions int, date_of_function date); 
insert into functionss values("marriage",1,"2024-01-21"), ("engagement",2,"2023-12-15"), ("ceremony",3,"2023-02-11"),
("marriage",4,"2024-04-26"), ("engagement",5,"2023-01-10"), ("birthaday",6,"2023-02-22"),("marriage",7,"2022-02-19"), 
("birthaday",8,"2021-11-05"), ("ceremony",9,"2022-09-05"),("marriage",10,"2024-06-12"), ("independence day",11,"2023-08-15"), ("birthaday",12,"2023-02-11");
alter table functionss add column gifts varchar(50) after no_of_functions;
UPDATE functionss  SET gifts = CASE
        WHEN no_of_functions = 1 THEN 'bedlamp'
        WHEN no_of_functions = 2 THEN 'ring'
        WHEN no_of_functions = 3 THEN 'booke'
        WHEN no_of_functions = 4 THEN 'cup set'
        WHEN no_of_functions = 5 THEN 'ring'
        WHEN no_of_functions = 6 THEN 'bracelet'
        WHEN no_of_functions = 7 THEN 'neckliss'
        WHEN no_of_functions = 8 THEN 'chain'
        WHEN no_of_functions = 9 THEN 'booke'
        WHEN no_of_functions = 10 THEN 'demond ring'
        WHEN no_of_functions = 11 THEN 'flag'
		WHEN no_of_functions = 12 THEN 'watch'
    END;
alter table functionss add column cost_of_gift int;
UPDATE functionss set cost_of_gift = CASE
        WHEN no_of_functions = 1 THEN '2000'
        WHEN no_of_functions = 2 THEN '8000'
        WHEN no_of_functions = 3 THEN '1500'
        WHEN no_of_functions = 4 THEN '2500'
        WHEN no_of_functions = 5 THEN '10000'
        WHEN no_of_functions = 6 THEN '12000'
        WHEN no_of_functions = 7 THEN '15000'
        WHEN no_of_functions = 8 THEN '5500'
        WHEN no_of_functions = 9 THEN '3500'
        WHEN no_of_functions = 10 THEN '50000'
        WHEN no_of_functions = 11 THEN '200'
		WHEN no_of_functions = 12 THEN '6000'
    END;
    select bin(no_of_functions) from functionss ;       # display the binary values
    select ucase(fun_name) from functionss;				# update string to upper case
    select avg(cost_of_gift) from functionss;			# avg of the cost_of_gift
    select max(cost_of_gift) from functionss;			# max of the cost_of_gift
    select count(*) from functionss;					# count the all attributes of the table 
    select * from functionss where lenght(fun_name)=5;	# display the 5 characters
    select * from functionss;