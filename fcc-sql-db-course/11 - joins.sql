-- JOIN: Combine rows from multiple tables based on a related column
-- Types of JOINs:
-- 		* JOIN (INNER JOIN) - Combines when both tables have the shared column in common
--		* LEFT JOIN (LEFT OUTER JOIN) - All rows from left table are included, and the right table is populated with a value if it matches or NULL if it does not
--		* RIGHT JOIN (RIGHT OUTER JOIN) - All rows from right table are included, and the left table is populated with a value if it matches, or NULL if it does not
--		* FULL JOIN (FULL OUTER JOIN) - All rows from both left and right table are included, the other table will be populated with a value if it matches, or NULL if it does not

INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;

SELECT * FROM branch;