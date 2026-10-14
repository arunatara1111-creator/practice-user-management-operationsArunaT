
-- Create a new database named TESTDB
CREATE DATABASE TESTDB;
    
-- Create a users table inside the TESTDB database
CREATE TABLE TESTDB.users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(45) NOT NULL UNIQUE,
    firstName VARCHAR(45) NOT NULL,
    lastName VARCHAR(45) NOT NULL,
    age INT
);

-- Display the structure of the users table
-- Shows column names, data types, and attributes
DESCRIBE TESTDB.users;

-- Insert one user
INSERT INTO TESTDB.users (username, firstName, lastName, age) 
VALUES ('jdoe', 'John', 'Doe', 35);

INSERT INTO TESTDB.users (username, firstName, lastName, age) 
VALUES ('asmith', 'Alice', 'Smith', 44);

-- Insert multiple users with one INSERT statement
-- Each set of values represents one new user
INSERT INTO TESTDB.users (username, firstName, lastName, age)
VALUES ('asmith1', 'Alice', 'Smith', 20),
 ('bdoe', 'Bob', 'Doe', 33),
 ('cjohnson', 'Charlie', 'Johnson', 41),
 ('dlee', 'David', 'Lee', 19),
 ('ejones', 'Eve', 'Jones', 30),
 ('fkim', 'Frank', 'Kim', 15),
 ('gwhite', 'Grace', 'White', 22),
 ('hwang', 'Henry', 'Wang', 19),
 ('ijones', 'Ivy', 'Jones', 50),
 ('jdoe1', 'John', 'Doe', 65),
 ('klee', 'Kevin', 'Lee', 62),
 ('lchen', 'Linda', 'Chen', 24),
 ('mlee', 'Michael', 'Lee', 29),
 ('nkim', 'Nancy', 'Kim', 18),
 ('ojohnson', 'Oscar', 'Johnson', 40),
 ('pchen', 'Peter', 'Chen', 55),
 ('qwang', 'Quincy', 'Wang', 28),
 ('rjones', 'Rachel', 'Jones', 37),
 ('slee', 'Sam', 'Lee', 21),
 ('tkim', 'Tina', 'Kim', 26);


-- Display all columns and all users in the table
 SELECT * FROM TESTDB.users;

-- Update John's first name to Jane and set his last name to Doe
-- Only update the user whose username is 'jdoe'
 UPDATE TESTDB.users SET firstName = 'Jane', lastName = 'Doe' WHERE username = 'jdoe';

 UPDATE TESTDB.users SET firstName = 'Jane' WHERE lastName = 'Doe';

-- Delete the user whose username is 'jdoe'
 DELETE FROM TESTDB.users WHERE username = 'jdoe';






-- -------------------------------
-- User Management Operations
-- Database: TESTDB
-- -------------------------------

-- View all users
SELECT *
FROM TESTDB.users;

-- Insert a new user
INSERT INTO TESTDB.users (username, firstName, lastName, age)
VALUES ('tbrown', 'Taylor', 'Brown', 27);


-- Update an existing user's information
-- Change Taylor Brown's age to 28

UPDATE TESTDB.users
SET age = 28
WHERE username = 'tbrown';

-- Delete a specific user
-- Delete only the user with username 'tbrown'

DELETE FROM TESTDB.users
WHERE username = 'tbrown';

-- Select users with a condition
-- Find users older than 30

SELECT *
FROM TESTDB.users
WHERE age > 30;

-- Sort users
-- Display users from youngest to oldest

SELECT *
FROM TESTDB.users
ORDER BY age ASC;

-- Limit the results
-- Display the five youngest users

SELECT *
FROM TESTDB.users
ORDER BY age ASC
LIMIT 5;

