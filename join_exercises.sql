USE employees;
/* Report the Manager of each department */
SELECT d.dept_name as Department_Name, CONCAT(e.first_name, ' ', e.last_name) as Department_Manager FROM departments AS d JOIN dept_manager AS dm ON d.dept_no = dm.dept_no JOIN employees AS e ON dm.emp_no = e.emp_no WHERE dm.to_date = '9999-01-01';

/* Report the managers of each department that are women */
SELECT d.dept_name as Department_Name, CONCAT(e.first_name, ' ', e.last_name) as Department_Manager FROM departments AS d JOIN dept_manager AS dm ON d.dept_no = dm.dept_no JOIN employees AS e ON dm.emp_no = e.emp_no WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

/* Find the titles of employees working in customer service */
SELECT t.title, COUNT(*) FROM titles as t JOIN employees e on e.emp_no = t.emp_no JOIN dept_emp de on e.emp_no = de.emp_no JOIN departments d on d.dept_no = de.dept_no WHERE d.dept_name = 'Customer Service' GROUP BY t.title;

/* Report current salaries of current managers */
SELECT d.dept_name as Department_Name, CONCAT(e.first_name, ' ', e.last_name) as Department_Manager, s.salary as Salary FROM departments AS d JOIN dept_manager AS dm ON d.dept_no = dm.dept_no JOIN employees AS e ON dm.emp_no = e.emp_no JOIN salaries s on e.emp_no = s.emp_no WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';

/* Find the names of all current employees, their department name, and their current manager's name
SELECT CONCAT(e.first_name, ' ', e.last_name) as Full_Name,
       d.dept_name as Department,
       CONCAT(e2.first_name, ' ', e2.last_name) as Manager_Name
FROM employees as e
JOIN dept_emp de on e.emp_no = de.emp_no
   JOIN departments d on de.dept_no = d.dept_no;
JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees e2 ON dm.emp_no = e2.emp_no;*/

SELECT * FROM employees LIMIT 10;