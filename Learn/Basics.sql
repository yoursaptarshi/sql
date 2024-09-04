-- CREATE DATABASE will create a databse
CREATE DATABASE testing

-- By giving "USE" commmand we can use a particular database
USE testing

-- CREATE TABLE will create a table with the provided schema in the database under use
CREATE TABLE user_data(
id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
birth_Date DATE,
job_title VARCHAR(100)
)

-- INSERT INTO command is used to insert a row into a table in a database
INSERT INTO user_data VALUES(
1,'Saptarshi','Samanta','2000-10-04','Software Engineer'
)
INSERT INTO user_data VALUES(
2,'Ritobrata','Sarkar','2003-06-12','MERN Stack Developer'
)
INSERT INTO user_data (id,first_name,last_name,birth_Date) VALUES(
3,'John','Wick','1963-06-12'
)
INSERT INTO user_data (id,first_name,last_name,birth_Date,job_title) VALUES(
4,'John','Walman','1986-3-2','Business Man'
)
--  Enter multiple rows at once

INSERT INTO user_data (id, first_name, last_name, birth_date, job_title) VALUES
    (5, 'Alice', 'Johnson', '1990-01-15', 'Data Analyst'),
    (6, 'Bob', 'Smith', '1985-02-20', 'Marketing Manager'),
    (7, 'Carol', 'Williams', '1978-03-25', 'Product Manager'),
    (8, 'David', 'Jones', '1992-04-30', 'Software Engineer'),
    (9, 'Eva', 'Brown', '1987-05-05', 'Sales Representative'),
    (10, 'Frank', 'Garcia', '2003-06-10', 'HR Specialist'),
    (11, 'Grace', 'Martinez', '1988-07-15', 'Business Analyst'),
    (12, 'Hank', 'Rodriguez', '1995-08-20', 'Project Manager'),
    (13, 'Ivy', 'Wilson', '2000-09-25', 'Software Engineer'),
    (14, 'Jack', 'Lee', '2003-06-12', 'Software Engineer'),
    (15, 'Kara', 'Walker', '1986-11-05', 'Software Engineer'),
    (16, 'Leo', 'Hall', '1989-12-10', 'Content Writer'),
    (17, 'Mona', 'Young', '2004-01-15', 'MERN Stack Developer'),
    (18, 'Nate', 'Hernandez', '1982-02-20', 'MERN Stack Developer'),
    (19, 'Olive', 'King', '1977-03-25', 'Graphic Designer'),
    (20, 'Paul', 'Wright', '2006-04-30', 'DevOps Engineer'),
    (21, 'Quinn', 'Lopez', '1981-05-05', 'Software Developer'),
    (22, 'Rose', 'Hill', '1984-06-10', 'DevOps Engineer'),
    (23, 'Sam', 'Scott', '1997-07-15', 'DevOps Engineer'),
    (24, 'Tina', 'Green', '1990-08-20', 'Financial Analyst'),
    (25, 'Uma', 'Adams', '1983-09-25', 'HR Manager'),
    (26, 'Victor', 'Baker', '2000-10-04', 'Software Developer'),
    (27, 'Wendy', 'Gonzalez', '1992-11-05', 'Software Developer'),
    (28, 'Xander', 'Nelson', '1985-12-10', 'Software Developer'),
    (29, 'Yara', 'Carter', '1994-01-15', 'Data Scientist'),
    (30, 'Zane', 'Mitchell', '1988-02-20', 'Cloud Engineer'),
    (31, 'Anna', 'Perez', '1990-03-25', 'DevOps Engineer'),
    (32, 'Bill', 'Roberts', '1981-04-30', 'Cloud Engineer'),
    (33, 'Clara', 'Turner', '1987-05-05', 'Cloud Engineer'),
    (34, 'Dan', 'Phillips', '1991-06-10', 'DevOps Engineer'),
    (35, 'Ella', 'Campbell', '2009-07-15', 'Chief Human Resources Officer'),
    (36, 'Fred', 'Parker', '1992-08-20', 'Content Strategist'),
    (37, 'Gina', 'Evans', '1986-09-25', 'Social Media Manager'),
    (38, 'Hugo', 'Edwards', '1994-10-30', 'Customer Success Manager'),
    (39, 'Isla', 'Collins', '2002-11-05', 'Product Owner'),
    (40, 'Jack', 'Stewart', '1978-12-10', 'Chief Technology Officer'),
    (41, 'Kate', 'Sanchez', '1985-01-15', 'Chief Marketing Officer'),
    (42, 'Liam', 'Morris', '1993-02-20', 'Chief Financial Officer'),
    (43, 'Mia', 'Rogers', '1980-03-25', 'Chief Operating Officer'),
    (44, 'Noah', 'Reed', '1996-04-30', 'Chief Executive Officer'),
    (45, 'Owen', 'Cook', '1984-05-05', 'Chief Information Officer'),
    (46, 'Pia', 'Morgan', '2005-06-10', 'Chief Financial Officer'),
    (47, 'Quentin', 'Bell', '2011-07-15', 'Chief Innovation Officer'),
    (48, 'Rita', 'Murphy', '1991-08-20', 'Chief Data Officer'),
    (49, 'Steve', 'Bailey', '1977-09-25', 'Chief Financial Officer'),
    (50, 'Tara', 'Rivera', '1988-10-30', 'Chief Human Resources Officer'),
    (51, 'Uma', 'Cooper', '1986-11-05', 'Chief Human Resources Officer'),
    (52, 'Vince', 'Richardson', '1990-12-10', 'Chief Human Resources Officer')


-- CRUD Operations

-- SELECT is used to read from a table
SELECT * FROM user_data

SELECT first_name FROM user_data

-- We can filter using WHERE condition 
SELECT * FROM user_data WHERE job_title = 'Software engineer'

-- SQL takes greater than in literal sense , i.e it will show DOB after 2001 like 2002 or 2003
SELECT * FROM user_data WHERE birth_Date > '2001-05-11'

-- UPDATE command is  used to update a row in table
UPDATE user_data SET job_title = 'Senior Software Engineer' WHERE id=1 AND first_name = 'Saptarshi'


-- DELETE command is used to delete a row
DELETE FROM user_data where id=4

-- Null values
SELECT * FROM user_data WHERE job_title IS NULL

-- Wild card characters is checked by LIKE keyword
-- % is used for sequence of characters and __ is used for single character
SELECT * FROM user_data WHERE first_name LIKE 'S%'

SELECT * FROM user_data WHERE first_name LIKE 'Sa_'


-- GROUP BY is used to group the results
SELECT job_title, COUNT(*)
FROM user_data GROUP BY job_title

SELECT job_title, MIN(birth_date) as eldest_employee_age
FROM user_data GROUP BY job_title

-- HAVING KEYWORD
SELECT job_title,COUNT(*) as 'Numbers'
FROM user_data
GROUP BY job_title
HAVING COUNT(*) > 1


-- DDL constraints like Primary key,Foreign key
-- DECIMAL is more precise like DECIMAL(10,2) means the cell can contain a value with maximum 10 gigits including 2 decimal places
-- ON DELETE CASCADE on a foreign key maintains a refential integrity, if the primary key column of the table is deleted then the dependent foreign key column of the table is also deleted
CREATE TABLE pay_scale (
emp_id INT,
salary DECIMAL(7,2),
age INT,
FOREIGN KEY (emp_id) REFERENCES user_data(id) 
)

INSERT INTO pay_scale (emp_id, salary, age) VALUES
(1, 50000.00, 25),
(2, 55000.50, 30),
(3, 60000.75, 28),

(5, 48000.25, 27),
(6, 62000.00, 35),
(7, 57000.50, 31),
(8, 53000.75, 29),
(9, 49500.00, 26),
(10, 51000.25, 34),
(11, 58000.00, 33),
(12, 56000.50, 30),
(13, 52000.75, 28),
(14, 49000.00, 27),
(15, 54000.25, 32),
(16, 58500.00, 31),
(17, 57000.50, 29),
(18, 53000.75, 34),
(19, 55000.00, 30),
(20, 60000.25, 33),
(21, 61000.00, 28),
(22, 59000.50, 35),
(23, 62000.75, 31),
(24, 54000.00, 32),
(25, 53000.25, 30),
(26, 56000.00, 29),
(27, 57000.50, 27),
(28, 60000.75, 34),
(29, 49000.00, 31),
(30, 52000.25, 32),
(31, 53000.00, 30),
(32, 55000.50, 29),
(33, 58000.75, 35),
(34, 49000.00, 28),
(35, 51000.25, 33),
(36, 60000.00, 32),
(37, 57000.50, 31),
(38, 62000.75, 27),
(39, 58000.00, 34),
(40, 54000.25, 30),
(41, 59000.00, 35),
(42, 53000.50, 28),
(43, 55000.75, 31),
(44, 49500.00, 32),
(45, 52000.25, 29),
(46, 60000.00, 33),
(47, 54000.50, 31),
(48, 57000.75, 34),
(49, 55000.00, 27),
(50, 51000.25, 32),
(51, 60000.00, 30),
(52, 57000.50, 29)

SELECT * FROM pay_scale

-- ALTER TABLE commands
ALTER TABLE user_data ADD email VARCHAR(100)

SELECT * FROM user_data

ALTER TABLE user_data DROP COLUMN email

ALTER TABLE user_data MODIFY COLUMN job_title VARCHAR(200)


-- Replace will delete an existing row and insert a new one ( will not work if foreign key is linked)
REPLACE INTO user_data (id,job_title) VALUES (1,'Software Developer')

-- Instead of replace we can use update
UPDATE user_data SET job_title = 'Software Developer' WHERE id = 1

-- Joins
-- Inner Join : Returns only rows where there is a match on both tables
SELECT user_data.id,user_data.first_name,user_data.last_name,pay_scale.salary FROM user_data
INNER JOIN pay_scale ON user_data.id = pay_scale.emp_id

-- LEFT Join : Returns all rows from left table and matched rows from right table
SELECT user_data.id , user_data.first_name FROM user_data LEFT JOIN pay_scale 
ON user_data.id = pay_scale.emp_id

-- Right Join : Returns all rows from right table and matched rows from left table
SELECT user_data.id,user_data.first_name FROM user_data
RIGHT JOIN pay_scale ON user_data.id = pay_scale.emp_id

-- Full Outer JOIN: Returns when there is a match in either left or right table
--  My sql does not support full uter join
-- SELECT user_data.id,user_data.first_name FROM user_data
-- FULL OUTER JOIN pay_scale ON user_data.id = pay_scale.emp_id



create table table2 (
id int primary key,
val int 
)

create table table2 (
id int primary key,
val int 
)

insert into table1(id,val) values
(1,10),
(3,30),
(5,50),
(7,70)

insert into table2(id,val) values
(1,10),
(2,20),
(3,30),
(4,40)
-- Union: Combine the result sets of two or more tables, removing dublicate rows  

SELECT * FROM table1 union SELECT * from table2

-- Intersect: show whats common between 2 tables

SELECT * FROM table1 INTERSECT SELECT * FROM table2


-- UNION ALL = union + intersect ( Just combile the tables without removing the duplicate values)
SELECT * FROM table1 UNION ALL SELECT * FROM table2


