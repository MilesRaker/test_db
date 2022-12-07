

/* Part 1 */
SELECT first_name, last_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name ;
SELECT first_name, last_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name DESC ;
SELECT last_name FROM employees WHERE last_name LIKE 'E%';
SELECT emp_no, first_name, last_name FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no;
SELECT emp_no, first_name, last_name FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no DESC;
SELECT first_name, last_name FROM employees WHERE last_name LIKE '%q%';

/* Part 2 */
SELECT first_name, last_name FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';
SELECT first_name, last_name FROM employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');
SELECT first_name, last_name FROM employees WHERE last_name LIKE '%e' OR last_name LIKE 'e%';
SELECT first_name, last_name FROM employees WHERE last_name LIKE '%e' AND last_name LIKE 'e%';
SELECT first_name, last_name FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';

/* functions_exercises */
SELECT CONCAT(first_name, last_name) FROM employees WHERE last_name LIKE '%e' AND last_name LIKE 'e%';
SELECT first_name, last_name, birth_date FROM employees WHERE year(hire_date) BETWEEN 1990 AND 2000 AND month(birth_date) = 12 AND day(birth_date) = 25;
SELECT first_name, last_name, birth_date FROM employees WHERE year(hire_date) BETWEEN 1990 AND 2000 AND month(birth_date) = 12 AND day(birth_date) = 25 ORDER BY birth_date, hire_date DESC;
SELECT first_name, last_name, datediff(now(), hire_date) FROM employees WHERE year(hire_date) BETWEEN 1990 AND 2000 AND month(birth_date) = 12 AND day(birth_date) = 25 ORDER BY birth_date, hire_date DESC;