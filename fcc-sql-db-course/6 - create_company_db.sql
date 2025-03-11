-- Table columns can be categorized as primary key, foreign key, attributes (default)
-- Create tables
-- 	* Can specify composite key (multiple keys make up the primary key)
-- 	* Can specify foreign keys
--		CREATE TABLE branch_supplier (
--			branch_id INT,
--			supplier_name VARCHAR(40),
--			supply_type VARCHAR(40),
--			PRIMARY KEY(branch_id, supplier_name),
--			FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
--		);

-- Foreign key may need to be defined AFTER tables are created:
--		ALTER TABLE employee
--		ADD FOREIGN KEY(branch_id)
--		REFERENCES branch(branch_id)
--		ON DELETE SET NULL;

-- Create employee table
CREATE TABLE employee (
	emp_id INT PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    birth_day DATE,
    sex VARCHAR(1),
    salary INT,
    super_id INT,
    branch_id INT
);

-- Create branch table
CREATE TABLE branch (
	branch_id INT PRIMARY KEY,
    branch_name VARCHAR(40),
    mgr_id INT,
    mgr_start_date DATE,
    FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

-- Go back and add foreign key (branch_id) to employee table.  
-- Can only add it after the table it references is created (branch).
ALTER TABLE employee
ADD FOREIGN KEY(branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL;

ALTER TABLE employee
ADD FOREIGN KEY(super_id)
REFERENCES employee(emp_id)
ON DELETE SET NULL;

-- Create client table
CREATE TABLE client (
	client_id INT PRIMARY KEY,
    client_name VARCHAR(40),
    branch_id INT,
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL
);

-- Create works with table
CREATE TABLE works_with (
	emp_id INT,
    client_id INT,
    total_sales INT,
    PRIMARY KEY(emp_id, client_id),
    FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
    FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE
);

-- Create branch_supplier table
CREATE TABLE branch_supplier (
	branch_id INT,
    supplier_name VARCHAR(40),
    supply_type VARCHAR(40),
    PRIMARY KEY(branch_id, supplier_name),
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);

-- Show characteristics of each table
DESCRIBE employee;
DESCRIBE branch;
DESCRIBE client;
DESCRIBE works_with;
DESCRIBE branch_supplier;

-- List all tables
SHOW TABLES;