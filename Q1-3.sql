-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    e.sex,
    s.salary
FROM employees AS e
JOIN salaries s
USING (emp_no);
    
-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT  first_name, last_name, hire_date,
FROM    employees
WHERE   hire_date BETWEEN '1986-01-01' AND '1987-01-01';

-- 3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT
    d.dept_no,
    d.dept_name
    dm.emp_no
    e.last_name
    e.first_name
FROM departments AS d
JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees AS e ON dept_manager.emp_no =

  

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.