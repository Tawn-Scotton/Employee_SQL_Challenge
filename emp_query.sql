SELECT first_name, last_name, hire_date
FROM employee_table
WHERE to_char(hire_date, 'YYYY') = '1986'
