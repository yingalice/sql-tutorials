-- Date format is 'YYYY-MM-DD'
-- * AS - Rename columns:
-- 		SELECT last_name AS surname FROM employee;
-- * DISTINCT - Find unique values in a column:
-- 		SELECT DISTINCT sex FROM employee;
-- * COUNT() - Count number of entries (NULL is excluded)
--		SELECT COUNT(emp_id) from employee;
-- * AVERAGE()
-- 		SELECT AVG(salary) FROM employee;
-- * SUM()
-- 		SELECT SUM(salary) FROM employee;
-- * GROUP BY (aggregation)
-- 		SELECT COUNT(sex), sex FROM employee GROUP BY sex;
--		SELECT emp_id, SUM(total_sales) FROM works_with GROUP BY emp_id;

-- Find all employees
SELECT *
FROM employee;

-- Find all employees ordered by salary
SELECT *
FROM employee
ORDER BY salary DESC;

-- Find all employees ordered by sex, then name
SELECT *
FROM employee
ORDER BY sex, first_name, last_name;

-- Find first 5 employees in the table
SELECT *
FROM employee
LIMIT 5;

-- Find first and last names of all employees
SELECT first_name, last_name
FROM employee;

-- Find forename and surnames of all employees
SELECT first_name AS forename, last_name AS surname
FROM employee;

-- Find out all the different genders
SELECT DISTINCT sex
FROM employee;

---------------
-- FUNCTIONS --
---------------
-- Find the number of employees with supervisors (8, not 9, because one is null)
SELECT COUNT(super_id)
FROM employee;

-- Find the number of female employees born after 1970
SELECT COUNT(emp_id)
FROM employee
WHERE sex = 'F' AND birth_day >= '1971-01-01';

-- Find the average of all male employee salaries
SELECT AVG(salary)
FROM employee
WHERE sex = 'M';

-- Find the sum of all employee salaries
SELECT SUM(salary)
FROM employee;

-- Find out how many males and females there are
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;

-- Find the total sales of each salesman
SELECT emp_id, SUM(total_sales)
FROM works_with
GROUP BY emp_id;

-- Find how much each client spent with the branch
SELECT client_id, SUM(total_sales)
FROM works_with
GROUP BY client_id;