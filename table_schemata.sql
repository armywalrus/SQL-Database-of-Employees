CREATE TABLE employees (
  emp_no INT NOT NULL,
  emp_title_id VARCHAR(30) NOT NULL,
  birth_date VARCHAR(30) NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  sex VARCHAR(10)NOT NULL,
  hire_date VARCHAR(30) NOT NULL
);
SELECT * FROM employees

ALTER TABLE employees
ADD PRIMARY KEY (emp_no)


CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM salaries


CREATE TABLE departments (
  dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
  dept_name  VARCHAR(30) NOT NULL
);
SELECT * FROM departments


CREATE TABLE dept_managers (
  dept_no VARCHAR(30) NOT NULL,
  emp_no INT NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
SELECT * FROM dept_managers


CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no VARCHAR(30) NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
SELECT * FROM dept_emp
