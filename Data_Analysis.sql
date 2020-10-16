SELECT employees.emp_no, employees.last_name, employees.first_name, 
	employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON 
employees.emp_no = salaries.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE CAST(EXTRACT(YEAR FROM hire_date) AS INT) = 1986;


