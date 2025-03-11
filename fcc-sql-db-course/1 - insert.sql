-- Add rows to tables:
--   * Option 1 (all columns, same order as table)
--     INSERT INTO <table> VALUES(val1, val2, val3);
--   * Option 2 (specific columns, you specify order)
--     INSERT INTO <table>(col1, col3) VALUES(val1, val3);
-- Use single quotes for strings

CREATE TABLE student(
	student_id INT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student(student_id, name) VALUES(3, 'Claire');
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

SELECT * FROM student;