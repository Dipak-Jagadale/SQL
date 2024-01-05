CREATE DATABASE temp1;
drop database temp1;
create database temp2;
drop database temp2;
create database college;

use college;

create  table student3 (
  id int primary key,
  name varchar(50),
age int not null
);


insert into student3 values (1,"Dipak",33);
insert into student3 values (2,"priya",31);


select * from student3;

#create database college;
#create database if not exists college;

drop database if exists company;

show databases;

show tables;


# TABLE RELATED QUERY 
# CREATE TABLE table_name (
# column_name datetype constraint,
#);


drop table pay_ment;




create table student4 (
rollno int primary key,
name varchar(50));

/*
# table ralted queries 
# select % veiw columns

# table ralted queries 
# select & veiw column

*/
#SELECT * FROM table_name;
select * from student4;

/*
# table  ralated queries 
# INSERT INTO table_name
(colname1,colname2)
VALUES 
(col_v1,col2_v2)
(col_v2,col2_v2)
*/
select * from student4;
insert INTO student4 
(rollno, name)
values
(105,"karan"),
(106,"arjun");


insert into student4	
values
(111,"dj"),
(112,"dp");


show tables;

create database xyz_company;
USE xyz_company;

create table employee1(
id int primary key,
name varchar(100),
salary int
);


INSERT INTO employee3
(id, name,salary)
values
(7,"adam",25000),
(8,"bob",30000),
(9,"casey",40000);


select * from studentt;

create table temp1 (
id int UNIQUE 
);

INSERT into temp1 VALUES (101);
DROP table temp1;
CREATE TABLE temp1(
id INT,
NAME VARCHAR(50),
age INT,
city VARCHAR(50),
PRIMARY KEY (id,name)
);



create table temp2(
cust_id int,
foreign key (cust_id)
t);

create table emp1 (
id int,
salary int default 25000);
  
select 




CREATE TABLE student90 (
rollno int primary key,
name VARCHAR (50),
marks int not null ,
grade varchar(25),
city VARCHAR(20)
);

insert into student90 
(rollno, name , marks,grade, city)
values
(501, "anil", 78, "C", "pune"),
(502, "bhumika", 93, "A", "Mumbai"),
(503, "chetan", 96, "B", "Mumbai"),
(504, "DJ", 98, "A", "pune"),
(505, "Dipak", 99, "A", "Mumbai");

SELECT name, marks from student90;

select * from student90;

select distinct city from student90;


select *
from student90
where marks > 80;
select *
from student90
where marks >80 and city = "munmai";

select *
from student90
where marks > 96;


select * 
from student90
where marks >90 and city ="mumbai";

select * 
from student90
where marks > 90 or city = "mumbai";

select * 
from student90
where marks >90 and city ="mumbai";

select * 
from student90
where marks between 80 and 97;


select * 
from student90
order by name asc;

select max(marks)
from student90;

select avg (marks)
from student90;


select count(marks)
from student90
group by city;

select  min(marks)
from student90;


select sum(marks)
from student90;

select avg(marks)
from student90;


select city,name,count(rollno)
from student90
group by city,name;

select city
from student90
group by city;


select city , avg(marks)
from student90
group by city
order by avg (marks);

select city , avg(marks)
from student90
group by city
order by avg (marks) desc;


CREATE TABLE student90 (
rollno int primary key,
name VARCHAR (50),
marks int not null ,
grade varchar(25),
city VARCHAR(20)
);

insert into student90 
(rollno, name , marks,grade, city)
values
(501, "anil", 78, "C", "pune"),
(502, "bhumika", 93, "A", "Mumbai"),
(503, "chetan", 96, "B", "Mumbai"),
(504, "DJ", 98, "A", "pune"),
(505, "Dipak", 99, "A", "Mumbai");


# For given table , find the total payment according to each payment



CREATE TABLE pay_ment 
cust_id int primary key,
cust_name  varchar(25),
mode varchar (20),
city varchar (20)
);

INSERT INTO pay_ment
(cust_id ,cust_name,mode,city)
values
(511,"SHIVAJI" ,"NETBANKING ", "RAIGAD"),
(521,"SAMBAJI" ,"CREDITCARD ", "SIHGAD"),
(531,"SANTAJI" ,"CREDITCARD ", "JANJIRA"),
(541,"DHANAJI" ,"NETBANKING ", "KONDHANA"),
(551,"KAVAJI","CREDITCARD", "TORNA"),
(561,"RAYAJI" ,"DEBITCARD ", "PAVNKHIND"),
(571,"BANDHAL" ,"DEBITCARD ", "PRATAPGAD"),
(581,"PASALKAR" ,"NETBANKING ", "PANHALGADH"),
(591,"JEDHE" ,"NETBANKING ", "SAJJANGADH"),
(611,"BAHIRjiNATH" ,"CREDITCARD", "RAMGADH");

SELECT * FROM PAY_MENT;

select city, count(city)
from pay_ment
group by city;


select mode, count(rollno)
from pay_ment
group by rollno
order by rollno;


select * from student90;


select city,count(rollno)
from student90
group by city
having max(marks) >98 ;


select city
from student90
where grade = "A"
GROUP BY CITY
HAVING  max(marks) > 97
order by city desc;

SET SQL_SAFE_UPDATES = 0;
 
update student90
set CITY = "DELHI"
WHERE NAME = "CHETAN";

SELECT * FROM STUDENT90;

update student90
set ROLLNO = "999",NAME = "PRIYA", MARKS = "89",CITY = "NEVRI";


CREATE TABLE stud_mark (
rollno int primary key,
name VARCHAR (50),
marks int not null ,
grade varchar(25),
city VARCHAR(20)
);

insert into stud_mark
(rollno, name , marks,grade, city)
values
(91, "anil", 78, "C", "pune"),
(92, "bhumika", 93, "A", "Mumbai"),
(93, "chetan", 96, "B", "Mumbai"),
(94, "DJ", 98, "A", "pune"),
(95, "Dipak", 99, "A", "Mumbai")
;


UPDATE student90 
set grade = "O"
where marks between 70 and 80;


select * from stud_mark;


UPDATE student90
SET MARKS = 41
WHERE ROLLNO = 501;




CREATE TABLE department (
id int primary key,
name varchar(50)
);

INSERT INTO department
VALUES
(501,"marathi"),
(502,"IT");


update department
set id = 511
where id = 501;

select * from department;

CREATE TABLE principal (
id int PRIMARY KEY,
NAME VARCHAR(50),
department_id int,
FOREIGN KEY (department_id) REFERENCES department(id)
ON UPDATE CASCADE 
ON DELETE CASCADE
);


drop table principal;

INSERT INTO principal
VALUES
(501, "Adam", 501),
(502, "Eve", 502);


select * from principal;







CREATE TABLE stud_mark (
rollno int primary key,
name VARCHAR (50),
marks int not null ,
grade varchar(25),
city VARCHAR(20)
);

insert into stud_mark
(rollno, name , marks,grade, city)
values
(91, "anil", 78, "C", "pune"),
(92, "bhumika", 93, "A", "Mumbai"),
(93, "chetan", 96, "B", "Mumbai"),
(94, "DJ", 98, "A", "pune"),
(95, "Dipak", 99, "A", "Mumbai")
;

select * from stud_mark;

ALTER TABLE stud_mark
ADD COLUMN age INT NOT NULL DEFAULT 19;




ALTER TABLE STUD_MARK
MODIFY COLUMN age varchar(2);

INSERT INTO  stud_mark
(ROLLNO, NAME , marks,grade, city)
values
(107, "gargi", 68,"B","banglore");

ALTER TABLE stud_mark
change age stud_age int;

alter table stu
rename to student;


























































































































