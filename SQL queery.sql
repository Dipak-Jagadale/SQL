show databases;
use djdb;
show tables;
 

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone TEXT NOT NULL,
    city TEXT,
    registration_date DATETIME NOT NULL,
    UNIQUE KEY unique_email (email(255))
);

select * from users;

INSERT INTO users (user_id, first_name, last_name, email, phone, city, registration_date) 
VALUES
(1,'John', 'Doe', 'johndoe@example.com', '555-1234', 'New York', '2023-01-02'),
(2,'Jane', 'Doe', 'janedoe@example.com', '555-5678', 'Los Angeles', '2023-01-03'),
(3,'Bob', 'Smith', 'bobsmith@example.com', '555-9012', 'Chicago', '2023-01-04'),
(4,'Samantha', 'Johnson', 'sjohnson@example.com', '555-3456', 'San Francisco', '2023-01-05'),
(5,'David', 'Brown', 'dbrown@example.com', '555-7890', 'Seattle', '2023-01-06'),
(6,'Emily', 'Davis', 'edavis@example.com', '555-2345', 'Boston', '2023-01-07'),
(7,'Michael', 'Wilson', 'mwilson@example.com', '555-6789', 'Houston', '2023-01-08'),
(8,'Sarah', 'Garcia', 'sgarcia@example.com', '555-0123', 'Miami', '2023-01-09'),
(9,'Daniel', 'Martinez', 'dmartinez@example.com', '555-4567', 'Atlanta', '2023-01-10'),
(10,'Jessica', 'Lee', 'jlee@example.com', '555-8901', 'Dallas', '2023-01-11'),
(11,'Matthew', 'Anderson', 'manderson@example.com', '555-8902', 'Detroit', '2023-01-12'),
(12,'Ashley', 'Thomas', 'athomas@example.com', '555-8903', 'Phoenix', '2023-01-13'),
(13,'Christopher', 'Taylor', 'ctaylor@example.com', '555-8904', 'San Diego', '2023-01-14'),
(14,'Jennifer', 'Moore', 'jmoore@example.com', '555-8905', 'Denver', '2023-01-15'),
(15,'Joshua', 'Jackson', 'jjackson@example.com', '555-8906', 'Portland', '2023-01-16'),
(16,'Amanda', 'White', 'awhite@example.com', '555-8907', 'Indianapolis', '2023-01-17'),
(17,'Andrew', 'Harris', 'aharris@example.com', '555-8908', 'Las Vegas', '2023-01-18'),
(18,'Brittany', 'Martin', 'bmartin@example.com', '555-8909', 'Austin', '2023-01-19'),
(19,'Brandon', 'Thompson', 'bthompson@example.com', '555-8910', 'Jacksonville', '2023-01-20'),
(20,'Megan', 'Garcia', 'mgarcia@example.com', '555-8911', 'San Jose', '2023-01-21'),
(21,'Justin', 'Martinez', 'jmartinez@example.com', '555-8912', 'Charlotte', '2023-01-22'),
(22,'Melissa', 'Robinson', 'mrobinson@example.com', '555-8913', 'Fort Worth', '2023-01-23'),
(23,'Kevin', 'Clark', 'kclark@example.com', '555-8914', 'Washington', '2023-01-24'),
(24,'Rebecca', 'Rodriguez', 'rrodriguez@example.com', '555-8915', 'Baltimore', '2023-01-25'),
(25,'Jacob', 'Lewis', 'jlewis@example.com', '555-8916', 'Milwaukee', '2023-01-26'),
(26,'Michelle', 'Walker', 'mwalker@example.com', '555-8917', 'Albuquerque', '2023-01-27'),
(27,'Ryan', 'Hall', 'rhall@example.com', '555-8918', 'Tucson', '2023-01-28'),
(28,'Stephanie', 'Allen', 'sallen@example.com', '555-8919', 'Fresno', '2023-01-29'),
(29,'Brian', 'Young', 'byoung@example.com', '555-8920', 'Sacramento', '2023-01-30'),
(30,'Heather', 'King', 'hking@example.com', '555-8921', 'Kansas City', '2023-01-31');

  
show tables;

select *
from users;

select "hello world";

select *               # ( column = field and row = record)
from users
where city = "New York" ;

-- select * 
-- from users;

select *
from users
where city = "Dallas";

select first_name as NAME ,last_name as Surname
from users;

SELECT count(*) as Total_users,
COUNT(PHONE) AS "USERS WITH PHONE"
FROM USERS;
select count(*) as city,
COUNT(phone) as "Airtel Network city" 
from users;  


/* 
SELECT count(dept_id)
FROM dept
WHERE location='CHICAGO'
  AND DEPT_ID = '20';
  
  

# select * from dept;
*/

SELECT *
FROM users
WHERE REGISTRATION_DATE >= '2023-01-01';

SELECT *
FROM USERS
WHERE CITY != 'New York';

SELECT DATE  ('2019-04-26 18:40:34') as Date;

SELECT * FROM users;

SELECT DATE(REGISTRATION_DATE)
FROM USERS;

SELECT time(REGISTRATION_DATE)
FROM USERS;

SELECT FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME
FROM USERS;

SELECT 
    first_name,
    last_name,
    CONCAT(first_name, ' ', last_name) AS full_name
FROM
    users;
    
SELECT 
    first_name,
    last_name,
    first_name || " " || last_name AS full_name
FROM
    users;
    
    SELECT * 
    FROM USERS
    WHERE CITY <> "new work";
    
        
    SELECT city, first_name,last_name
    from users;
    
    select *
    from users
	where not city = "Los Angeles";
    
    select  first_name || " " || last_name as full_name,email 
    from users where city = "New York";
    
    select  concat(first_name,"",last_name) as full_name,email 
    from users where city = "New York";
    
    
    select * 
    from rides
    where fare_amount > 20;
    
    select *
    from users
    where registration_date < "2022-01-01";
    
    select fare_amount as cost , tip_amount as reward,fare_amount + tip_amount as "Total Amount"
    from rides;
    
    select round(fare_amount / distance,2) as Fair_Per_Mile
    from rides;
    
    select *
    from rides
    where pickup_location = "Central Park" or "times square";
    
    select fare_amount %5 as Fare_remainder
    from rides;
    
    select *
    from users
    where registration_date > "2022-01-01" and city = "New York";
    
    select city,count(*) as total_user 
    from users
    group by city;
    
    select driver_id, sum(fare_amount+tip_amount) as Total_income
    from rides
    group by driver_id
    order by Total_income;
    
    select * from rides;
    
    select driver_id, max(distance) as MAX_DIST
    from rides
    group by driver_id;
    
    select driver_id, avg(fare_amount) as avg_amt
    from rides
    group by driver_id;
    
select driver_id, sum(fare_amount) as total_fare_amount 
from rides
group by driver_id
order by total_fare_amount desc
limit 3;
    
    
select driver_id, sum(fare_amount) as total_fare_amount 
from rides
group by driver_id
having total_fare_amount > 20
order by total_fare_amount desc
limit 3;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

CREATE TABLE vehicles (
  vehicle_id INTEGER PRIMARY KEY,
  make TEXT NOT NULL,
  model TEXT NOT NULL,
  year INTEGER NOT NULL,
  license_plate varchar(100) NOT NULL UNIQUE
);

CREATE TABLE drivers (
  driver_id INTEGER PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email varchar(255) NOT NULL UNIQUE,
  phone varchar(12) NOT NULL UNIQUE,
  city TEXT NOT NULL,
  vehicle_id INTEGER NOT NULL,
  FOREIGN KEY (vehicle_id) REFERENCES vehicles (vehicle_id)
);

CREATE TABLE rides (
  ride_id INTEGER PRIMARY KEY,
  pickup_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  dropoff_time DATETIME NOT NULL,
  pickup_location TEXT NOT NULL,
  dropoff_location TEXT NOT NULL,
  fare_amount REAL NOT NULL,
  tip_amount REAL NOT NULL,
  distance REAL NOT NULL,
  user_id INTEGER NOT NULL,
  driver_id INTEGER NOT NULL,
  status TEXT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (driver_id) REFERENCES drivers (driver_id)
);


-- Additional users from San Jose
INSERT INTO users (user_id, first_name, last_name, email, phone, city, registration_date) VALUES
(36, 'Anthony', 'Ortega', 'aortega@example.com', '505-3456', 'San Jose', '2023-01-12 08:30:00'),
(37, 'Christina', 'Henderson', 'chenderson@example.com', '505-7890', 'San Jose', '2023-01-13 10:00:00'),
(38, 'George', 'Murphy', 'gmurphy@example.com', '505-2345', 'San Jose', '2023-01-14 11:45:00'),
(39, 'Linda', 'Peterson', 'lpeterson@example.com', '505-6789', 'San Jose', '2023-01-15 16:00:00'),
(40, 'Thomas', 'Harris', 'tharris@example.com', '505-0123', 'San Jose', '2023-01-16 18:00:00');

-- Additional users from New York
INSERT INTO users (user_id, first_name, last_name, email, phone, city, registration_date) VALUES
(31, 'Jennifer', 'Thompson', 'jthompson@example.com', '515-4567', 'New York', '2023-01-17 10:30:00'),
(32, 'Robert', 'Turner', 'rturner@example.com', '515-8901', 'New York', '2023-01-18 11:00:00'),
(33, 'Maria', 'Sanchez', 'msanchez@example.com', '515-5678', 'New York', '2023-01-19 14:00:00'),
(34, 'John', 'Phillips', 'jphillips@example.com', '515-9012', 'New York', '2023-01-20 16:30:00'),
(35, 'Susan', 'Gonzalez', 'sgonzalez@example.com', '515-3456', 'New York', '2023-01-21 17:30:00');

-- Additional users from San Francisco
INSERT INTO users (user_id, first_name, last_name, email, phone, city, registration_date) VALUES
(41, 'David', 'Clark', 'dclark@example.com', '525-7890', 'San Francisco', '2023-01-22 09:00:00'),
(42, 'Nancy', 'Adams', 'nadams@example.com', '525-2345', 'San Francisco', '2023-01-23 10:45:00'),
(43, 'Joseph', 'Baker', 'jbaker@example.com', '525-6789', 'San Francisco', '2023-01-24 12:30:00'),
(44, 'Margaret', 'Taylor', 'mtaylor@example.com', '525-0123', 'San Francisco', '2023-01-25 14:15:00'),
(45, 'Charles', 'Anderson', 'canderson@example.com', '525-4567', 'San Francisco', '2023-01-26 15:00:00');



-- Vehicles table
INSERT INTO vehicles (vehicle_id, make, model, year, license_plate) VALUES
(1, 'Toyota', 'Camry', 2018, 'ABC123'),
(2, 'Honda', 'Civic', 2017, 'DEF456'),
(3, 'Ford', 'F-150', 2020, 'GHI789'),
(4, 'Chevrolet', 'Malibu', 2019, 'JKL012'),
(5, 'Nissan', 'Altima', 2018, 'MNO345');

-- Drivers table
INSERT INTO drivers (driver_id, first_name, last_name, email, phone, city, vehicle_id) VALUES
(1,'Mike', 'Brown', 'mbrown@example.com', '555-2345', 'New York', 1),
(2,'Rachel', 'Garcia', 'rgarcia@example.com', '555-6789', 'Los Angeles', 2),
(3,'David', 'Lee', 'dlee@example.com', '555-0123', 'Chicago', 3),
(4,'Linda', 'Martinez', 'lmartinez@example.com', '555-4567', 'San Francisco', 4),
(5,'Alex', 'Wilson', 'awilson@example.com', '555-8901', 'Seattle', 5);

-- Rides table
INSERT INTO rides (ride_id, pickup_time, dropoff_time, pickup_location, dropoff_location, fare_amount, tip_amount, distance, user_id, driver_id,status) VALUES
(1,'2023-04-06 10:00:00', '2023-04-06 10:15:00', 'Central Park', 'Empire State Building', 10.50, 2.00, 3.0, 1, 1,11),
(2,'2023-04-06 11:30:00', '2023-04-06 12:15:00', 'Universal Studios', 'Hollywood Walk of Fame', 25.75, 5.00, 8.0, 2, 2,22),
(3,'2023-04-06 14:00:00', '2023-04-06 14:45:00', 'Millennium Park', 'Willis Tower', 15.20, 3.00, 5.5, 3, 3,33),
(4,'2023-04-06 16:30:00', '2023-04-06 17:15:00', 'Golden Gate Bridge', "Fisherman's Wharf", 21.80, 4.00, 7.5, 4, 4,44),
(5,'2023-04-06 18:30:00', '2023-04-06 19:00:00', 'Space Needle', 'Pike Place Market', 12.50, 2.50, 3.0, 5, 5,55);

-- Subsequent Insert Statements with Tip Amount
INSERT INTO rides (ride_id, pickup_time, dropoff_time, pickup_location, dropoff_location, fare_amount, tip_amount, distance, user_id, driver_id, status)
VALUES (6,'2023-04-15 10:00:00', '2023-04-15 10:30:00', 'Central Park', 'Times Square', 10.0, 2.00, 5.0, 1, 1, 'completed');

INSERT INTO rides (ride_id,pickup_time, dropoff_time, pickup_location, dropoff_location, fare_amount, tip_amount, distance, user_id, driver_id, status)
VALUES (7,'2023-04-15 11:00:00', '2023-04-15 11:30:00', 'Empire State Building', 'Grand Central Station', 15.0, 3.00, 7.5, 2, 2, 'completed');

INSERT INTO rides (ride_id,pickup_time, dropoff_time, pickup_location, dropoff_location, fare_amount, tip_amount, distance, user_id, driver_id, status)
VALUES (8,'2023-04-16 10:00:00', '2023-04-16 10:30:00', 'Central Park', 'Times Square', 12.0, 2.40, 6.0, 3, 1, 'completed');

INSERT INTO rides (ride_id,pickup_time, dropoff_time, pickup_location, dropoff_location, fare_amount, tip_amount, distance, user_id, driver_id, status)
VALUES (9,'2023-04-16 11:00:00', '2023-04-16 11:30:00', 'Empire State Building', 'Grand Central Station', 20.0, 4.00, 10.0, 4, 2, 'completed');

INSERT INTO rides (pickup_time, dropoff_time, pickup_location, dropoff_location, fare_amount, tip_amount, distance, user_id, driver_id, status)
VALUES ('2023-04-17 10:00:00', '2023-04-17 10:30:00', 'Central Park', 'Times Square', 18.0, 3.60, 9.0, 5, 1, 'completed');

INSERT INTO rides (pickup_time, dropoff_time, pickup_location, dropoff_location, fare_amount, tip_amount, distance, user_id, driver_id, status)
VALUES ('2023-04-17 11:00:00', '2023-04-17 11:30:00', 'Empire State Building', 'Grand Central Station', 25.0, 5.00, 12.5, 6, 2, 'completed');

INSERT INTO rides (pickup_time, dropoff_time, pickup_location, dropoff_location, fare_amount, tip_amount, distance, user_id, driver_id, status)
VALUES ('2023-04-18 10:00:00', '2023-04-18 10:30:00', 'Central Park', 'Times Square', 22.0, 4.40, 11.0, 7, 1, 'completed');


select * from rides;

-- Find all rides where the fare amount was greater than $20 

select *
from rides
where fare_amount >= 20;

-- Find all users who registered before a specific date: 2022-01-01
select *
from users
where registration_date < '2022-01-01';

-- Calculate the total fare amount for all rides
select * from rides;

select sum(fare_amount)
from rides;

SELECT FARE_AMOUNT + TIP_AMOUNT AS TOTAL_FARE
FROM RIDES;

-- Calculate the average fare amount per mile for all rides

select avg(fare_amount)
from rides;

select sum(fare_amount)/count(fare_amount)
from rides;

-- calculate the remainder of dividing the fare amount by 5 for all rides

select fare_amount, fare_amount/5  as remainder
from rides;

SELECT fare_amount, FARE_AMOUNT % 5 AS FARE_REMAINDER
FROM RIDES;

-- Find all rides where the pickup location was either Central Park or Times Square
select * 
from rides
where pickup_location = "Central Park" 
or pickup_location = "Times Square";

-- Find all users who registered before a specific date (2023-02-01) and are from New York
select *
from users
where registration_date < "2023-02-01" 
and city = "New York";

use abhidb;
show databases;

-- Group and segmenting

SELECT CITY, COUNT(*) AS "TOTAL USERS"
FROM USERS
GROUP BY CITY;


-- find the total amount earned by each driver in the rider table
select * from rides;

select driver_id, sum(fare_amount + tip_amount) as Total_Amount
from rides
group by driver_id;

select driver_id , fare_amount
from rides;

-- Find the minimum fare amount earned by each driver in the rides table

select driver_id, min(fare_amount) as min_fare_amount
from rides
group by driver_id;

-- Find the maximum distance traveled by each driver in the rides table
select driver_id, max(distance) as max_distance
from rides
group by driver_id;

-- Find the average fare amount earned by each driver in the rides table

select driver_id, avg(fare_amount) as avg_fare_amount
from rides
group by driver_id;

-- sorting data as per fare amount

select driver_id, sum(fare_amount) as total_fare_amount
from rides
group by driver_id
order by total_fare_amount;

select driver_id, sum(fare_amount) as total_fare_amount
from rides
group by driver_id
order by total_fare_amount desc; -- descending order

-- top three earning of drivers

select driver_id, sum(fare_amount) as total_fare_amount 
from rides
group by driver_id
order by total_fare_amount desc
limit 4;

select driver_id, sum(fare_amount) as total_fare_amount 
from rides
group by driver_id
-- order by total_fare_amount desc
limit 3;

-- filter the drivers data by fare amount 

select driver_id, sum(fare_amount) as total_fare_amount 
from rides 
group by driver_id
having total_fare_amount > 20 
order by total_fare_amount desc
limit 3;

select * from rides;

select driver_id, sum(fare_amount+tip_amount) as total_amount, sum(fare_amount+tip_amount) * 0.20 as bonus
from rides
group by driver_id;

select concat(pickup_location ," ---to--- ", dropoff_location) as trip
from rides;

select fare_amount, tip_amount, (fare_amount+tip_amount) as addition, concat(fare_amount ,tip_amount) as trip
from rides;
 
--------------------------------------------------------------------------------------------------------------------

use abhidb;
select * from rides;

--  just we need find drivers who never take ride fare_amount is greater than 20
select distinct driver_id
	from rides
	where fare_amount > 20;
    
   
select distinct driver_id 
from rides
where driver_id not in (
	select distinct driver_id
	from rides
	where fare_amount > 20);

select driver_id
from rides 
where driver_id not in (1,2); -- 3,4,5

select distinct driver_id
from rides
where driver_id not in (3,4); -- 1,2,5

---------------------------------------------------------------------------------------------------------------------------
-- Adding additional data for 

CREATE TABLE user_activity (
  activity_id INTEGER PRIMARY KEY,
  user_id INTEGER NOT NULL,
  activity_type TEXT NOT NULL,
  activity_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users (user_id)
);

ALTER TABLE user_activity
MODIFY COLUMN activity_id INT AUTO_INCREMENT;


-- UPDATE user_activity SET activity_id = new_unique_value WHERE activity_id = 10;


INSERT INTO user_activity (user_id, activity_type, activity_date)
VALUES (1, 'ride_request', '2022-01-01 12:00:00'),
       (1, 'ride_completed', '2022-01-01 13:00:00'),
       (1, 'payment_made', '2022-01-01 13:15:00'),
       (2, 'ride_request', '2022-01-01 12:30:00'),
       (2, 'ride_cancelled', '2022-01-01 12:35:00'),
       (3, 'payment_made', '2022-01-02 14:00:00'),
       (3, 'ride_request', '2022-01-02 14:30:00'),
       (4, 'ride_completed', '2022-01-03 10:00:00'),
       (4, 'payment_made', '2022-01-03 10:15:00'),
       (4, 'ride_request', '2022-01-03 09:30:00'),
       (5, 'ride_request', '2022-01-03 14:00:00'),
       (5, 'ride_completed', '2022-01-03 14:30:00'),
       (5, 'payment_made', '2022-01-03 14:45:00'),
       (6, 'ride_request', '2022-01-04 09:00:00'),
       (6, 'payment_made', '2022-01-04 09:15:00'),
       (7, 'payment_made', '2022-01-04 10:30:00'),
       (7, 'ride_request', '2022-01-04 10:45:00'),
       (7, 'ride_completed', '2022-01-04 11:00:00'),
       (8, 'ride_request', '2022-01-04 12:30:00'),
       (9, 'ride_request', '2022-01-05 08:00:00');


INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (1, 'ride_scheduled', '2022-03-01');
INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (2, 'ride_scheduled', '2022-03-02');
INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (3, 'ride_scheduled', '2022-03-02');
INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (4, 'ride_scheduled', '2022-03-03');
INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (5, 'ride_scheduled', '2022-03-04');

INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (1, 'payment', '2022-03-01');
INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (2, 'payment', '2022-03-02');
INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (3, 'payment', '2022-03-03');
INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (4, 'payment', '2022-03-03');
INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (5, 'payment', '2022-03-04');


INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (1, 'ride_requested', '2022-03-01');
INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (2, 'ride_requested', '2022-03-02');
INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (3, 'ride_requested', '2022-03-02');
INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (4, 'ride_requested', '2022-03-03');
INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (5, 'ride_requested', '2022-03-04');


INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (1, 'payment_completed', '2022-03-01');
INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (2, 'payment_completed', '2022-03-02');
INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (3, 'payment_completed', '2022-03-03');
INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (4, 'payment_completed', '2022-03-03');
INSERT INTO user_activity (user_id, activity_type, activity_date) VALUES (5, 'payment_completed', '2022-03-04');


INSERT INTO user_activity (user_id, activity_type, activity_date)
VALUES
  (1, 'Ride Scheduling', '2022-03-01 10:30:00'),
  (2, 'Ride Scheduling', '2022-03-01 12:45:00'),
  (3, 'Ride Scheduling', '2022-03-01 18:30:00'),
  (4, 'Ride Scheduling', '2022-03-02 09:15:00'),
  (5, 'Ride Scheduling', '2022-03-02 14:30:00'),
  (6, 'Ride Scheduling', '2022-03-02 16:30:00'),
  (7, 'Ride Scheduling', '2022-03-02 19:15:00'),
  (8, 'Ride Scheduling', '2022-03-03 11:30:00'),
  (9, 'Ride Scheduling', '2022-03-03 13:00:00'),
  (10, 'Ride Scheduling', '2022-03-03 15:30:00'),
  (11, 'Ride Scheduling', '2022-03-04 10:00:00'),
  (12, 'Ride Scheduling', '2022-03-04 17:30:00'),
  (13, 'Ride Scheduling', '2022-03-04 19:45:00'),
  (1, 'Ride Scheduling', '2022-03-05 10:30:00'),
  (14, 'Ride Scheduling', '2022-03-05 14:00:00'),
  (15, 'Ride Scheduling', '2022-03-05 16:30:00'),
  (5, 'Ride Scheduling', '2022-03-06 13:15:00'),
  (16, 'Ride Scheduling', '2022-03-06 15:30:00'),
  (17, 'Ride Scheduling', '2022-03-06 18:45:00'),
  (18, 'Ride Scheduling', '2022-03-07 11:30:00'),
  (19, 'Ride Scheduling', '2022-03-07 12:30:00'),
  (2, 'Ride Scheduling', '2022-03-07 20:30:00'),
  (20, 'Ride Scheduling', '2022-03-08 10:30:00'),
  (6, 'Ride Scheduling', '2022-03-08 12:45:00'),
  (21, 'Ride Scheduling', '2022-03-08 14:30:00'),
  (11, 'Ride Scheduling', '2022-03-09 09:15:00'),
  (22, 'Ride Scheduling', '2022-03-09 10:30:00'),
  (23, 'Ride Scheduling', '2022-03-09 18:30:00'),
  (24, 'Ride Scheduling', '2022-03-10 10:00:00'),
  (25, 'Ride Scheduling', '2022-03-10 12:30:00'),
  (26, 'Ride Scheduling', '2022-03-10 15:45:00'),
  (27, 'Ride Scheduling', '2022-03-11 09:30:00'),
  (28, 'Ride Scheduling', '2022-03-11 13:00:00'),
  (29, 'Ride Scheduling', '2022-03-11 17:30:00'),
  (1, 'Ride Scheduling', '2022-03-12 11:15:00'),
  (30, 'Ride Scheduling', '2022-03-12 13:45:00'),
  (31, 'Ride Scheduling', '2022-03-12 16:30:00'),
  (32, 'Ride Scheduling', '2022-03-13 10:30:00'),
  (33, 'Ride Scheduling', '2022-03-13 12:45:00'),
  (34, 'Ride Scheduling', '2022-03-13 15:30:00'),
  (35, 'Ride Scheduling', '2022-03-14 09:15:00'),
  (36, 'Ride Scheduling', '2022-03-14 14:30:00'),
  (37, 'Ride Scheduling', '2022-03-14 16:30:00');


INSERT INTO user_activity (user_id, activity_type, activity_date)
VALUES
  (1, 'Home page', '2022-03-01 10:20:00'),
  (1, 'Enter Pickup Location', '2022-03-01 10:21:00'),
  (1, 'Enter Dropoff Location', '2022-03-01 10:22:00'),
  (1, 'Confirm Fare', '2022-03-01 10:23:00'),
  (1, 'Request Ride', '2022-03-01 10:24:00'),
  (1, 'Ride Started', '2022-03-01 10:25:00'),
  (2, 'Home page', '2022-03-01 12:35:00'),
  (2, 'Enter Pickup Location', '2022-03-01 12:36:00'),
  (2, 'Enter Dropoff Location', '2022-03-01 12:37:00'),
  (2, 'Confirm Fare', '2022-03-01 12:38:00');
  
INSERT INTO user_activity (user_id, activity_type, activity_date)
VALUES
  (3, 'Home page', '2022-03-01 18:20:00'),
  (3, 'Enter Pickup Location', '2022-03-01 18:21:00'),
  (3, 'Enter Dropoff Location', '2022-03-01 18:22:00'),
  (3, 'Confirm Fare', '2022-03-01 18:23:00'),
  (3, 'Request Ride', '2022-03-01 18:24:00'),
  (3, 'Ride Started', '2022-03-01 18:25:00'),
  (4, 'Home page', '2022-03-02 09:05:00'),
  (4, 'Enter Pickup Location', '2022-03-02 09:06:00'),
  (4, 'Enter Dropoff Location', '2022-03-02 09:07:00'),
  (4, 'Confirm Fare', '2022-03-02 09:08:00'),
  (5, 'Home page', '2022-03-02 14:20:00'),
  (5, 'Enter Pickup Location', '2022-03-02 14:21:00'),
  (5, 'Enter Dropoff Location', '2022-03-02 14:22:00'),
  (6, 'Home page', '2022-03-02 16:20:00'),
  (6, 'Enter Pickup Location', '2022-03-02 16:21:00'),
  (7, 'Home page', '2022-03-02 19:05:00'),
  (7, 'Enter Pickup Location', '2022-03-02 19:06:00'),
  (7, 'Enter Dropoff Location', '2022-03-02 19:07:00'),
  (7, 'Confirm Fare', '2022-03-02 19:08:00'),
  (7, 'Request Ride', '2022-03-02 19:09:00');
  
INSERT INTO user_activity (user_id, activity_type, activity_date)
VALUES
  (8, 'Home page', '2022-03-15 10:30:00'),
  (9, 'Home page', '2022-03-15 14:45:00'),
  (10, 'Home page', '2022-03-15 17:00:00');


select * from user_activity;

select activity_type
from user_activity
group by activity_type;

select activity_type, count(*) as total_usage
from user_activity
group by activity_type;

select activity_type, count(*) as total_usage,
		count() * 100/(select count() from user_activity) as usage_rate
from user_activity
group by activity_type
order by usage_rate desc;

select count(*) from user_activity; -- 116

select activity_type, count(*) as total_usage,
        count() * 100/(select count() from user_activity 
							where activity_date >= '2022-01-01' and activity_date <= '2022-01-31') as usage_rate
from user_activity
where activity_date >= '2022-01-01' and activity_date <= '2022-01-31'
group by activity_type
order by usage_rate desc;


/*

CASE
  WHEN condition1 THEN result1
  WHEN condition2 THEN result2
  ...
  ELSE resultN
END

*/

SELECT *,
  CASE
    WHEN YEAR < 2019 THEN 'OLD VEHICLE'
    WHEN YEAR >= 2019 THEN 'NEW VEHICLE'
  END
   AS VEHICLE_TIER
FROM VEHICLES;

use abhidb;

select date(activity_date)
from user_activity;


select 
	(case when date(activity_date) between '2022-03-01' and '2022-03-01'
          then user_id
	end) as Retention_rate_1
from user_activity
where activity_type = 'Ride Scheduling' ;
    


select 
	count(distinct case when date(activity_date) between '2022-03-01' and '2022-03-01'
          then user_id
	end) as Retention_rate_1
from user_activity
where activity_type = 'Ride Scheduling' ;


select
(count(distinct case when date(activity_date) between '2022-03-08' and '2022-03-14' then user_id end) /
count(distinct case when date(activity_date) between '2022-03-01' and '2022-03-07' then user_id end)) * 100 as retension_rate
from user_activity
where activity_type = 'Ride Scheduling';

SELECT 
  COUNT(DISTINCT CASE WHEN DATE(ACTIVITY_DATE)
  BETWEEN '2022-03-01' AND '2022-03-07'
    THEN USER_ID
  END) RETENTION_RATE_1
FROM USER_ACTIVITY
WHERE ACTIVITY_TYPE = 'Ride Scheduling';

SELECT 
  COUNT(DISTINCT CASE WHEN DATE(ACTIVITY_DATE)
  BETWEEN '2022-03-08' AND '2022-03-14'
    THEN USER_ID
  END) RETENTION_RATE_2
FROM USER_ACTIVITY
WHERE ACTIVITY_TYPE = 'Ride Scheduling';


