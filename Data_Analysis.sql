--Query Num 1
SELECT employees.emp_no, employees.last_name, employees.first_name, 
	employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON 
employees.emp_no = salaries.emp_no;

--Query Num 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE CAST(EXTRACT(YEAR FROM hire_date) AS INT) = 1986;


--Query Num 3 
SELECT dept_emp.dept_no, depts.dept_name, employees.emp_no,
	employees.first_name, employees.last_name
FROM dept_emp
-- joining 3 tables together by performing consecutive joins
INNER JOIN depts ON
	dept_emp.dept_no = depts.dept_no
INNER JOIN employees ON
	dept_emp.emp_no = employees.emp_no
WHERE employees.emp_no IN (
	--Limiting results to managers using subquery
	SELECT DISTINCT mgmt_emp_no FROM dept_mgmt
);


--Query Num 4
SELECT employees.emp_no, depts.dept_name,
	employees.first_name, employees.last_name
FROM dept_emp
-- joining 3 tables together by performing consecutive joins
INNER JOIN depts ON
	dept_emp.dept_no = depts.dept_no
INNER JOIN employees ON
	dept_emp.emp_no = employees.emp_no;

--Query Num 5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--Query Num 6 
SELECT employees.emp_no, depts.dept_name,
	employees.first_name, employees.last_name
FROM dept_emp
-- joining 3 tables together by performing consecutive joins
INNER JOIN depts ON
	dept_emp.dept_no = depts.dept_no
INNER JOIN employees ON
	dept_emp.emp_no = employees.emp_no
WHERE depts.dept_name = 'Sales';

--Query Num 7
SELECT employees.emp_no, depts.dept_name,
	employees.first_name, employees.last_name
FROM dept_emp
-- joining 3 tables together by performing consecutive joins
INNER JOIN depts ON
	dept_emp.dept_no = depts.dept_no
INNER JOIN employees ON
	dept_emp.emp_no = employees.emp_no
WHERE depts.dept_name IN ('Sales', 'Development');


SELECT last_name, COUNT(last_name) AS LN_Count

