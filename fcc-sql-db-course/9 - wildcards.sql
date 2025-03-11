-- Wildcards:
-- 		% = any # characters
-- 		_ = 1 character
-- Must use with LIKE keyword
-- SELECT * FROM client WHERE client_name LIKE '%LLC%';

-- Find any clients who are an LLC
SELECT *
FROM client
WHERE client_name LIKE '%LLC';

-- Find any branch suppliers who are in the label business
SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '%label%';

-- Find any employee born in October
SELECT *
FROM employee
WHERE birth_day LIKE '____-02%';

-- Find any clients who are schools
SELECT *
FROM client
WHERE client_name LIKE '%school%';