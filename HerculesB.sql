--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)

SELECT first_name		AS first_name,
       last_name		AS last_name,
       sex	            AS sex
FROM employee_table
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';