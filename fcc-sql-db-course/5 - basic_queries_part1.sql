-- Comparison operators: =, <>, <, >, <=, >=
-- Boolean operators: AND, OR
-- Sample query:
--   SELECT name, major           					 (List desired columns)
--   FROM student                                    (Specify table)
--   WHERE major <> 'Chemistry' AND student_id > 2   (Multiple filters)
--   ORDER BY name DESC          					 (Descending order)
--   LIMIT 2;                      					 (Top 2 results)

SELECT name, major           					
FROM student  					 
WHERE major <> 'Chemistry' AND student_id > 2   
ORDER BY name DESC        
LIMIT 2;
               					
CREATE TABLE student(
	student_id INT AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);

INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');
INSERT INTO student(name, major) VALUES('Claire', 'Chemistry');
INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Mike', 'Computer Science');

-- Show all columns
SELECT *
FROM student;

-- Can specify columns to show
SELECT name, major
FROM student;

-- Can prepend with table name
SELECT student.name, student.major
FROM student;

SELECT student.name, student.major
FROM student
ORDER BY name DESC;  -- Add DESC for descending order

SELECT *
FROM student
ORDER BY major, student_id;  -- ORDER BY major, then student_id

SELECT *
FROM student
LIMIT 2;  -- Get first 2 results

SELECT *
FROM student
WHERE major = 'Biology' OR major = 'Chemistry';  -- Biology or Chemistry majors

SELECT *
FROM student
WHERE major <> 'Chemistry';  -- Non-chemistry majors

SELECT *
FROM student
WHERE name IN ('Claire', 'Kate', 'Mike');  -- Specify list of names