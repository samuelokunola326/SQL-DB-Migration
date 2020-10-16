-- adding drop statement to make script reusable
DROP TABLE IF EXISTS titles;

-- creating the table for titles
CREATE TABLE titles(
	title_id VARCHAR(30) NOT NULL PRIMARY KEY,
	title VARCHAR(50)

);
-- Test table output
SELECT * FROM titles
LIMIT 3;

-- adding drop statement to make script reusable
DROP TABLE IF EXISTS employees;

-- creating the table for employees
CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	title_id VARCHAR(30) NOT NULL,
	birth_date DATE,
	first_Name VARCHAR(100),
	last_Name VARCHAR(100),
	sex VARCHAR(10),
	hire_date DATE,
	FOREIGN KEY(title_id)
		REFERENCES titles(title_id)
	
);

-- Test table output
SELECT * FROM employees
LIMIT 3;

-- adding drop statement to make script reusable
DROP TABLE IF EXISTS salaries;

-- creating the table for salaries
CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary MONEY,
	FOREIGN KEY(emp_no)
		REFERENCES employees(emp_no)

);

-- Test table output
SELECT * FROM salaries
LIMIT 3;

-- adding drop statement to make script reusable
DROP TABLE IF EXISTS depts;

-- creating the table for depts
CREATE TABLE depts(
	dept_no VARCHAR(30)NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30)

);

-- Test table output
SELECT * FROM depts
LIMIT 3;

-- adding drop statement to make script reusable
DROP TABLE IF EXISTS dept_emp;

-- creating the table for dept_emp
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	PRIMARY KEY(emp_no,dept_no)

	
);

-- Test table output
SELECT * FROM dept_emp
LIMIT 3;

-- adding drop statement to make script reusable 
DROP TABLE IF EXISTS dept_mgmt;

-- creating the table for dept_mgmt
CREATE TABLE dept_mgmt(
	dept_no VARCHAR(30) NOT NULL,
	mgmt_emp_no INT NOT NULL,
	PRIMARY KEY(dept_no,mgmt_emp_no)

);

-- Test table output
SELECT * FROM dept_mgmt
LIMIT 3;