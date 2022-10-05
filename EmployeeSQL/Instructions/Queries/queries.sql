-- (Q1) Listing employee details (employee number, last name, first name, sex, and salary)
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s
	ON e.emp_no = s.emp_no;
	
-- (Q2) Listing first name, last name, and hire date for employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date)=1986;

-- (Q3) Listing the manager of each department with: dept number, dept name, the manager's employee number, last name, first name
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees e
INNER JOIN dept_manager dm
	ON e.emp_no = dm.emp_no
	JOIN departments d
	ON dm.dept_no = d.dept_no;

-- (Q4) Listing the department of each employee with: employee number, last name, first name, dept name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de
	ON e.emp_no = de.emp_no
	JOIN departments d
	ON de.dept_no = d.dept_no;

-- (Q5) Listing first name, last name, and sex for employees with first name "Hercules" and last name beginning with "B"
SELECT first_name, last_name, sex
FROM employees
WHERE first_name='Hercules'
AND last_name LIKE 'B%';

-- (Q6) Listing all employees in the Sales dept, with their: employee number, last name, first name, and dept name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de
	ON e.emp_no = de.emp_no
	JOIN departments d
	ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- (Q7) Listing all employees in the Sales and Development depts, with their: employee number, last name, first name, and dept name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de
	ON e.emp_no = de.emp_no
	JOIN departments d
	ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

-- (Q8) Listing the frequency count of employee last names in descending order
SELECT last_name, COUNT(emp_no) AS COUNT
FROM employees
GROUP BY last_name
ORDER BY COUNT DESC;