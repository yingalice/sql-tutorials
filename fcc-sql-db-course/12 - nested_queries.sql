-- Subquery: Use result of one SELECT statement to inform the result of another SELECT statement
-- Pair with:
-- 		* IN - Allows for multiple rows to be returned
-- 		* = - Requires a single row to be returned, can guarantee by using LIMIT 1

-- Find names of all employees who have sold over 30,000 to a single client
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
	SELECT works_with.emp_id
	FROM works_with
	WHERE works_with.total_sales > 30000
);

-- Find all clients who are handled by the branch that Michael Scott manages
SELECT client.client_name
FROM client
WHERE client.branch_id IN (
	SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = (
			SELECT employee.emp_id
			FROM employee
			WHERE employee.first_name = 'Michael' AND employee.last_name = 'Scott'
			LIMIT 1
    )
);