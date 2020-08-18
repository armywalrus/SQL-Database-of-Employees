--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM salaries AS s
INNER JOIN employees AS e ON
e.emp_no=s.emp_no;


--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986'


--3. List the manager of each department with the following information: department number, department name, 
  -- the manager's employee number, last name, first name.
CREATE VIEW manager_info AS
SELECT d.dept_no, d.dept_name, m.emp_no
FROM dept_managers AS m
INNER JOIN departments AS d ON
d.dept_no=m.dept_no;
SELECT * FROM manager_info

SELECT i.dept_no, i.dept_name, i.emp_no, e.last_name, e.first_name
FROM employees AS e
INNER JOIN manager_info AS i ON
i.emp_no=e.emp_no


--4. List the department of each employee with the following information: 
  -- employee number, last name, first name, and department name.
CREATE VIEW departments_info AS
SELECT w.emp_no, w.dept_no, d.dept_name
FROM dept_emp AS w
INNER JOIN departments AS d ON
w.dept_no=d.dept_no;
SELECT * FROM departments_info

SELECT e.emp_no, e.last_name, e.first_name, f.dept_name
FROM employees AS e
INNER JOIN departments_info AS f ON
f.emp_no=e.emp_no
  
	
--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';


--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, f.dept_name
FROM employees AS e
INNER JOIN departments_info AS f ON
f.emp_no=e.emp_no
WHERE dept_name = 'Sales'


--7.List all employees in the Sales and Development departments, 
 -- including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, f.dept_name
FROM employees AS e
INNER JOIN departments_info AS f ON
f.emp_no=e.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'


--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "last name count"
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;

--To check prior data:
--SELECT last_name
--FROM employees
--WHERE last_name = 'Zykh' 