USE employees;
/* Part 1 */
SELECT first_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
SELECT last_name FROM employees WHERE last_name LIKE 'E%';
SELECT first_name, last_name FROM employees WHERE last_name LIKE '%q%';

/* Part 2 */
SELECT first_name, last_name FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';
SELECT first_name, last_name FROM employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');
SELECT first_name, last_name FROM employees WHERE last_name LIKE '%e' OR last_name LIKE 'e%';
SELECT first_name, last_name FROM employees WHERE last_name LIKE '%e' AND last_name LIKE 'e%';
SELECT first_name, last_name FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';