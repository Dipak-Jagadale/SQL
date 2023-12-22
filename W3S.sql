select * from customer;

select distinct payment_amt 
from customer;

select count(distinct payment_amt) as 'count' 
from customer;

select * 
from customer
where grade=1;

select * 
from customer
where grade = 2 and cust_country= "India" and cust_city="Bangalore";

select * from customer;


select *
from customer
where grade = 2 or cust_country = "india" or cust_city = "bangalore";

select * 
from customer
where not grade = 1 and cust_country= "India" or  cust_city ="Bangalore";


select *
from customer
order by grade;

select *
from customer
order by cust_country ASC , cust_name DESC;

select * from customer;

# insert into customer (cust_code , cust_name , cust_country)
# values () 


select * from customer;


select * 
from  customer
where cust_country = "india" and  cust_city = "mumbai";

select * 
from customer
where cust_city = "mumbai" or cust_city = "new york";


select *
from customer
where NOT cust_country = "india" or cust_country = "USA";


SELECT *
from customer 
where cust_country = "USA" AND cust_city = "UK" or cust_city = "india";


SELECT *
FROM customer 
where NOT cuat_country = AND  NOT cust_ country = 

