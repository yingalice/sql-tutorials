-- Update:
--   UPDATE <table>
--   SET <variable1> = <value1>, <variable2> = <value2>
--   WHERE <variable3> = <value3>;
-- Delete:
--   DELETE FROM <table>
--   WHERE <variable1> = <value1> AND <variable2> = <value2>;

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

UPDATE student
SET major = 'Bio'							 -- Applies to many
WHERE major = 'Biology';  					 -- Update all 'Biology' majors to 'Bio'

UPDATE student
SET major = 'Comp Sci'						 -- Applies to specific student
WHERE student_id = 4;  						 -- Update Jack (#4)'s major from 'Bio' to 'Comp Sci'

UPDATE student
SET major = 'Biochemistry'					 -- Use OR for multiple conditions
WHERE major = 'Bio' OR major = 'Chemistry';  -- Jack (Bio) and Claire (Chemistry) are now both 'Biochemistry'

UPDATE student
SET name = 'Tom', major = 'undecided'  		 -- Set multiple values
WHERE student_id = 1;  				   		 -- Jack (Biochemistry) is now Tom (undecided)

UPDATE student								 -- Got rid of WHERE
SET major = 'undecided';					 -- EVERYONE is now undecided!

DELETE FROM student
WHERE student_id = 5;						 -- Deletes Mike's row

DELETE FROM student
WHERE name = 'Tom' AND major = 'undecided';  -- More specific.  Deletes row with Tom (undecided)

SELECT * FROM student;