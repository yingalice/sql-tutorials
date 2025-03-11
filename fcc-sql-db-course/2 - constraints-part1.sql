-- Constraints (can add when creating table):
--   * NOT NULL
--   * UNIQUE
-- Note: Primary keys are both NOT NULL and UNIQUE

CREATE TABLE student(
	student_id INT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) UNIQUE,
    PRIMARY KEY(student_id)
);

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student VALUES(3, NULL, 'Chemistry');  -- Error: Column 'name' cannot be null 
INSERT INTO student VALUES(4, 'Jack', 'Biology');  -- Error: Duplicate entry 'Biology' for key 'student.major'
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

SELECT * FROM student;