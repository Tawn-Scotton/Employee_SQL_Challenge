--List each employee in the Sales department, including their employee number, last name, and first name (2 points)
SELECT	e.emp_no, 
		e.last_name, 
		e.first_name,
		de.dept_no
FROM employee_table e
LEFT JOIN department_employee_table de
ON e.emp_no = de.emp_no
INNER JOIN department_table d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';