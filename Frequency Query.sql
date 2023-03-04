SELECT last_name, COUNT(*) AS freq_count
FROM employee_table
GROUP BY last_name
ORDER BY freq_count DESC;