--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT
	e.emp_no, e.first_name,e.last_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de on e.emp_no = de.emp_no
JOIN departments AS d on de.dept_no = d.dept_no