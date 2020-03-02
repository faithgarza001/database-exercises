USE employees;
SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (SELECT hire_date FROM employees where emp_no = 101010);

