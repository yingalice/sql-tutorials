-- Triggers: Defines what happens when a certain operation is performed on the database
-- 		Ex: Everytime a row gets deleted in this table, insert something into something else
-- Open "MySQL Command Line Client" (triggers need to be defined here, since we need to change the SQL delimiter)
-- Example:
-- 		DELIMITER $$
-- 		CREATE
-- 		TRIGGER my_trigger BEFORE INSERT
--    		ON employee
--    		FOR EACH ROW BEGIN
--				INSERT INTO trigger_test VALUES(NEW.first_name);
-- 			END$$
-- 		DELIMITER ;

CREATE TABLE trigger_test(
	message VARCHAR(100)
);

-----------------------------------
-- Type EVERYTHING below in CLI: --
-----------------------------------
USE giraffe

-- EXAMPLE 1 --
-- Configuring MySQL to insert a value into the trigger_test table whenever a value is inserted in employee table
-- DELIMITER $$ changes MySQL delimiter from semicolon to 2 dollar signs
--		Cannot use semicolon to end the trigger, because already using it to end the SQL command
-- DELIMITER ; changes the delimiter back to semicolon
DELIMITER $$
CREATE
	TRIGGER my_trigger1 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
		INSERT INTO trigger_test VALUES('added new employee');
	END$$
DELIMITER ;

-- EXAMPLE 2 --
-- NEW refers to the row being inserted, and I can access specific columns from that row (ie. first_name)
DELIMITER $$
CREATE
 TRIGGER my_trigger2 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
		INSERT INTO trigger_test VALUES(NEW.first_name);
	END$$
DELIMITER ;

-- EXAMPLE 3 --
DELIMITER $$
CREATE
	TRIGGER my_trigger3 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
		IF NEW.sex = 'M' THEN
			INSERT INTO trigger_test VALUES('added male employee');
		ELSEIF NEW.sex = 'F' THEN
			INSERT INTO trigger_test VALUES('added female');
		ELSE
			INSERT INTO trigger_test VALUES('added other employee');
		END IF;
	END$$
DELIMITER ;

-- ------------------------------- --
-- Test it out in editor (not CLI) --
-- ------------------------------- --
INSERT INTO employee
VALUES(109, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3);

INSERT INTO employee
VALUES(110, 'Kevin', 'Malone', '1978-02-19', 'M', 69000, 106, 3);

INSERT INTO employee
VALUES(111, 'Pam', 'Beesly', '1988-02-19', 'F', 69000, 106, 3);

SELECT * FROM employee;
SELECT * FROM trigger_test;

DROP TRIGGER my_trigger;
SHOW TRIGGERS;