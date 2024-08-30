create table customers (customerID int,customerName varchar(100), email varchar(100), joinDate date);
alter table customers add phno varchar(15);
alter table customers modify email text;
alter table customers rename column customerName to Name;
insert into customers
values (1, " chakri", "chakri@gamil.com", "2003-01-13", 1234567890),  
(2,"shasha", "shasha@gmail.com","2003-05-13", 2345678901),
(3,"uppu", "uppu@gmail.com","2002-06-20", 3456789012);
insert into customers values (4,"Alice johnson", "alice@gmail.com", "2024-08-29",null);
update customers set email=case
when customerID=2 then "newemail@emaple.com"
else email
end;
insert into customers values (5, "chand",null,"2001-02-11", 4567890123);
select * from customers;
drop table customers;

create table employees (employeID int, firstname varchar(50), lastname varchar(50), DateofBirth date, salary decimal(10,2) );
alter table employees add department varchar(100);
alter table employees modify firstname varchar(75);
alter table employees drop column salary;
alter table employees rename staffmembers;
select * from staffmembers;
insert into staffmembers values(1,"jhon","doe","1980-05-15", "cse");
insert into staffmembers
values (2,"jhon","daltan","1950-12-02", "ece"),
 (3,"glen","maxwell","1960-10-25", "me"),
 (4,"jhon","cena","1990-08-12", "ce");
update staffmembers set lastname=case
when employeID=2 then "smith"
else lastname
end;

#creating the table book/Librarybook 

create table Book (bookID int, title varchar(150), author varchar(1000), publicationYear int, price decimal(8,2));
alter table Book add column genre varchar(50);    # add column genre with varchar(50)
alter table Book modify column price float;			# modify the column price datatype with float
alter table Book drop column genre;				# drop column genre from the table
alter table Book rename to Librarybook; 		# rename the table_name(book) to table_name(Librarybook) 
insert into Librarybook 
values (1,"The Great Gatsby", "F.Scitt Fitzgerald", 1925, 10.99 );		#inserting the values to the table 
insert into Librarybook 
values(2,"1984", "George Orwell", 1949,8.99),
(3, "To Kill a Mockingbird", "Harper Lee", 1960, 7.49);					#inserting the multiple values to the table in asingle line

				#updating the price of the book with the help of bookId
update Librarybook set price=case					
when bookID=1 then 12.99
else price
end;								

update librarybook
set publicationyear =2024
where price>10.00;  		# checking the condition,publicationyear is 2024 and price is greaterthen 10.99 
select author,title from Librarybook where publicationyear = 2024; # selecting the title and author columns where publication year = 2024


select * from Librarybook;
