-- SQL tutorial by Giraffe Academy (FreeCodeCamp): https://www.youtube.com/watch?v=HXV3zeQKqGY
-- https://www.giraffeacademy.com/databases/sql/company-database-intro/

-- Create a database
CREATE DATABASE giraffe;

-- Create a table, common data types:
--   * INT 			 - Whole numbers
--   * DECIMAL(M, N) - Decimal numbers, exact value (M is total digits, N is decimal places.  Ex: Max for DECIMAL(5, 2) is 999.99)
--   * VARCHAR(N) 	 - String of text length N
--   * BLOB 		 - Binary Large Object, stores large data.  Ex: Images, files
--   * DATE 		 - YYYY-MM-DD
--   * TIMESTAMP 	 - YYYY-MM-DD HH:MM:SS, used for recording when things happen
CREATE TABLE student(
	student_id INT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);

-- Update table, add or delete column
ALTER TABLE student ADD gpa DECIMAL(3,2);
ALTER TABLE student DROP COLUMN gpa;

-- Delete table
DROP TABLE student;

-- Show table characteristics
DESCRIBE student;