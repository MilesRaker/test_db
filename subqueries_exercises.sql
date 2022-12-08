USE employees;
SELECT first_name, last_name FROM employees WHERE birth_date = (SELECT birth_date FROM employees WHERE emp_no = 101010);

SELECT title FROM titles WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

SELECT title, COUNT(*) FROM titles WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod') GROUP BY title;

SELECT first_name, last_name FROM employees WHERE gender = 'F' AND emp_no IN (SELECT emp_no FROM dept_manager WHERE to_date = '99990101');

SELECT dept_name FROM departments d
    JOIN dept_emp de ON d.dept_no = de.dept_no
        WHERE de.emp_no IN (SELECT emp_no FROM employees WHERE gender = 'F' AND emp_no IN (SELECT emp_no FROM dept_manager WHERE to_date = '99990101'));

SELECT first_name, last_name FROM employees
WHERE emp_no = (SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 1);