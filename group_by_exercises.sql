USE employees;
SELECT DISTINCT title FROM titles;
SELECT last_name FROM employees WHERE last_name LIKE '%e' AND last_name LIKE 'e%' GROUP BY last_name;
SELECT first_name, last_name FROM employees WHERE last_name LIKE '%e' AND last_name LIKE 'e%' GROUP BY first_name, last_name;
SELECT last_name FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%' GROUP BY last_name;
SELECT last_name, COUNT(*) FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%' GROUP BY last_name;
SELECT count(*), gender FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')  GROUP BY gender;