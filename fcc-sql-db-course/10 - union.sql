-- UNION: Combine results from multiple SELECT statements into the same column
-- Rules (for each select statement):
-- 		* Have same number of columns
--      * Have similar data type
-- Uses the first select's column names, can rename using AS

-- Find list of employee and branch names
SELECT first_name AS company_names
FROM employee
UNION
SELECT branch_name
FROM branch
UNION
SELECT client_name
FROM client;

-- Find a list of all clients & branch suppliers' names
SELECT client_name, client.branch_id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

-- Find a list of all money spent or earned by the company
SELECT salary * -1 AS money_flow
FROM employee
UNION
SELECT total_sales
FROM works_with;