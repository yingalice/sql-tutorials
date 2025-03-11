-- Deleting entries in database, when they have foreign keys associated
-- For example, if you delete 'Michael Scott' (emp_id: 102) from employee, and what happens to the row containing mgr_id (102) in the branch table?
-- 		* ON DELETE SET NULL ==> Set that foreign key value to NULL (mgr_id: NULL)
--		* ON DELETE CASCADE ==> Delete that entire row in the database
-- If foreign key IS a primary key, you MUST use:
--      * ON DELETE CASCADE (because a primary key cannot be null)
-- If foreign key is NOT a primary key, you can use either ON DELETE SET NULL or ON DELETE SET CASCADE

-- Here's how the tables were setup, one with ON DELETE SET NULL and another with ON DELETE CASCADE
CREATE TABLE branch (
	branch_id INT PRIMARY KEY,
	branch_name VARCHAR(40),
	mgr_id INT,
	mgr_start_date DATE,
	FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

CREATE TABLE branch_supplier (
	branch_id INT,
    supplier_name VARCHAR(40),
    supply_type VARCHAR(40),
    PRIMARY KEY(branch_id, supplier_name),
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);

SELECT * FROM employee;
SELECT * FROM branch;
SELECT * FROM branch_supplier;

DELETE FROM employee
WHERE emp_id = 102;  -- The mgr_id in the >>branch<< table went from 102 to NULL

DELETE FROM branch
WHERE branch_id = 2;  -- The entire row in the >>branch_supplier<< table was deleted if its branch_id was 2
