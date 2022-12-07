USE employees;
SELECT first_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
SELECT last_name FROM employees WHERE last_name LIKE 'E%';
SELECT first_name, last_name FROM employees WHERE last_name LIKE '%q%';