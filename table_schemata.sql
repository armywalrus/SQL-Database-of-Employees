--create 'employees' table
CREATE TABLE employees (
  emp_no INT NOT NULL,
  emp_title_id VARCHAR(30) NOT NULL,
  birth_date VARCHAR(30) NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  sex VARCHAR(10)NOT NULL,
  hire_date VARCHAR(30) NOT NULL
);
--add primary key to 'employees' table
ALTER TABLE employees
ADD PRIMARY KEY (emp_no)
--view 'employees' table
SELECT * FROM employees


--create 'salaries' table
CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
--add primary key to 'salaries' table
ALTER TABLE salaries
ADD PRIMARY KEY (emp_no)
--view 'salaries' table
SELECT * FROM salaries

--create 'departments' table
CREATE TABLE departments (
  dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
  dept_name  VARCHAR(30) NOT NULL
);
--view 'departments' table
SELECT * FROM departments


--create 'dept_managers' table
CREATE TABLE dept_managers (
  dept_no VARCHAR(30) NOT NULL,
  emp_no INT NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
--add primary key to 'dept_managers' table
ALTER TABLE dept_managers
ADD PRIMARY KEY (emp_no)
--view 'dept_managers' table
SELECT * FROM dept_managers


--create 'dept_emp' table
CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no VARCHAR(30) NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
--add ID column and primary key to 'dept_emp' table
ALTER TABLE dept_emp
ADD id SERIAL PRIMARY KEY;
--view 'dept_emp' table
SELECT * FROM dept_emp