show databases;
 use sys;
show table;
select * from metrics;
describe metrics;
create database sql_intro;
show databases;

create table emp_details (Name	varchar(25), Age int, Sex char(1),
doj date, city varchar(15),salary float);

describe emp_details;

insert into emp_details
values("jimmy", 35, "M", "2005-05-30", "chicago", 70000),  
("Shane", 30, "M", "1999-06-25", "Seattle", 55000),
("Marry", 28, "F","2009-03-10", "Boston", 62000),
("Dwayne", 37, "M",  "2011-07-12","Austin", 57000),
("Sara", 32,"F", "2017-10-27", "new york", 72000),
("Ammy", 35, "F", "2014-12-20", "seattle", 80000);

select * from emp_details;

select distinct city from emp_details;

select count(name) as count_name from emp_details;


select avg(salary) from emp_details;




