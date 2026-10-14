-- Create databse testdb
CREATE DATABASE IF NOT EXISTS testdb;

-- 1. Select your database
USE testdb;

-- 2. Drop the table if it already exists (to start completely fresh)
DROP TABLE IF EXISTS users;

-- 3. Create the users table with the correct schema
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(45) NOT NULL,
    firstName VARCHAR(45) NOT NULL,
    lastName VARCHAR(45) NOT NULL,
    age INT NOT NULL
);

-- 4. Insert the 20 users (IDs will automatically start at 1)
-- Task 1
INSERT INTO users (username, firstName, lastName, age)
VALUES
('asmith', 'Alice', 'Smith', 20),
('bdoe', 'Bob', 'Doe', 33),
('cjohnson', 'Charlie', 'Johnson', 41),
('dlee', 'David', 'Lee', 19),
('ejones', 'Eve', 'Jones', 30),
('fkim', 'Frank', 'Kim', 15),
('gwhite', 'Grace', 'White', 22),
('hwang', 'Henry', 'Wang', 19),
('ijones', 'Ivy', 'Jones', 50),
('jdoe', 'John', 'Doe', 65),
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


-- Task2 - Update Existing Records
UPDATE users
SET age = 29
WHERE  username = 'jdoe';

-- Task3 - Delete specific Rows
DELETE FROM users
WHERE username = 'jdoe';

-- Task4 - Select queries with conditions, sorting and limits
--  Example A: Selecting users with a specific condition and sorting them
SELECT username, firstName, lastName, age
FROM users
WHERE age > 25
ORDER BY age ASC;

--  Example B: Selecting users with a limit
SELECT * FROM users
ORDER BY id ASC
LIMIT 5;


-- 5. Verify your results (IDs should now be 1 to 20)
SELECT * FROM users;