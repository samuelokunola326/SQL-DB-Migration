DROP TABLE titles;

CREATE TABLE titles(
	title_id VARCHAR(30) NOT NULL PRIMARY KEY,
	title VARCHAR(50)

);

DROP TABLE employees;


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


DROP TABLE salaries;

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary MONEY,
	FOREIGN KEY(emp_no)
		REFERENCES employees(emp_no)

);


DROP TABLE depts;


CREATE TABLE depts(
	dept_no VARCHAR(30)NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30)

);