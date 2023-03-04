--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)

SELECT  e.emp_no	AS employee_number,
		e.last_name	AS last_name, 
		e.first_name	AS first_name,
			dt.dept_no	AS department_number
FROM employee_table e 
LEFT JOIN department_employee_table de
ON e.emp_no = de.emp_no
INNER JOIN department_table dt 
ON dt.dept_no = de.dept_no
WHERE dt.dept_name in ('Sales', 'Development')
