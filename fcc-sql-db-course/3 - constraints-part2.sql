-- Constraints (can add when creating table):
--   * AUTO_INCREMENT
--   * DEFAULT <value>

CREATE TABLE student(
	student_id INT AUTO_INCREMENT,  		-- Don't need to specify value, will auto increment whenever new entry is added
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided',  -- Set default value
    PRIMARY KEY(student_id)
);

INSERT INTO student(name) VALUES('Jack');  					   -- 1, 'Jack', 'undecided'
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');  -- 2, 'Kate', 'Sociology'

SELECT * FROM student;