--Question 1
SELECT salaries.emp_no, last_name, first_name, gender, salary FROM salaries
INNER JOIN employees
ON salaries.emp_no = employees.emp_no;

--Question 2
SELECT emp_no, first_name, last_name, hire_date 
FROM employees
WHERE LEFT(hire_date, 4) = '1986';

--Question 3
SELECT departments.dept_no, dept_name, employees.emp_no, last_name, first_name, from_date, to_date FROM departments
INNER JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no;

--Question 4
SELECT employees.emp_no, last_name, first_name, dept_name FROM departments
INNER JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no;

--Question 5
SELECT * FROM employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';

--Question 6
SELECT employees.emp_no, last_name, first_name, dept_name FROM departments
INNER JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales';

--Question 7
SELECT employees.emp_no, last_name, first_name, dept_name FROM departments
INNER JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--Question 8
SELECT last_name, count(last_name) AS name_count FROM employees
GROUP BY last_name
ORDER BY name_count DESC;