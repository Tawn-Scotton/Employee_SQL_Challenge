
SELECT  	e.emp_no 			AS employee_number,	
	    	de.dept_no 			AS department_number,
			e.last_name			AS employee_last_name,
			e.first_name		AS employee_first_name,
			d.dept_name			AS department_name
			
			
FROM 		employee_table e
INNER JOIN 	department_employee_table de
ON  		e.emp_no = de.emp_no
INNER JOIN  department_table d
ON			de.dept_no = d.dept_no

		