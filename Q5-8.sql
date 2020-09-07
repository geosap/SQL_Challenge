--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT 	first_name,last_name,sex
FROM	employees
WHERE 	(first_name = 'Hercules' AND last_name LIKE '%B%');

-- 6. List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
SELECT 		d.dept_name, e.emp_no,e.last_name,e.first_name
FROM 		employees AS e
LEFT JOIN 	dept_emp AS de ON e.emp_no = de.emp_no
LEFT JOIN 	departments AS d ON de.dept_no = d.dept_no
WHERE		d.dept_name LIKE 'Sales';

--7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.	
SELECT 		d.dept_name, e.emp_no,e.last_name,e.first_name
FROM 		employees AS e
LEFT JOIN 	dept_emp AS de ON e.emp_no = de.emp_no
LEFT JOIN 	departments AS d ON de.dept_no = d.dept_no
WHERE		d.dept_name LIKE 'Sales' OR d.dept_name LIKE 'Development'
ORDER BY 	d.dept_name;

--8. In descending order, list the frequency count of employee last names, 
--.e., how many employees share each last name.
SELECT 		last_name,
COUNT		(last_name) AS "lastname_count"
FROM 		employees
GROUP BY	last_name
ORDER BY 	lastname_count DESC;