  -- SUM

SELECT SUM(salaries.salary) FROM salaries;

-- AVG

SELECT AVG(salaries.salary) FROM salaries;


-- COUNT

SELECT COUNT(employees.emp_no) FROM employees;

-- MAX

SELECT MAX(employees.salary) FROM employees;


-- MIN

SELECT MAX(employees.salary) FROM employees;

-- GROUP BY

SELECT emp_no, salary FROM salaries GROUP BY emp_no;

-- GROUP BY SUM

SELECT emp_no, SUM(salary) FROM salaries GROUP BY emp_no;

-- GROUP BY AVG

SELECT emp_no, AVG(salary) FROM salaries GROUP BY emp_no;

-- HAVING

SELECT emp_no, SUM(salary) FROM salaries GROUP BY emp_no
HAVING SUM(salary) >= 267334 AND SUM(salary) <= 299999;


SELECT emp_no, SUM(salary) FROM salaries GROUP BY emp_no
HAVING SUM(salary) BETWEEN  267334 AND  299999;

SELECT emp_no, SUM(salary) Salary FROM salaries
GROUP BY emp_no
HAVING SUM(salary) BETWEEN  267334 AND  299999
ORDER BY SUM(salary);

SELECT emp_no, SUM(salary) Salary FROM salaries GROUP BY emp_no
HAVING SUM(salary) BETWEEN  267334 AND  299999
ORDER BY Salary;

SELECT emp_no, SUM(salary) Salary FROM salaries
GROUP BY emp_no
HAVING Salary BETWEEN  267334 AND  299999
ORDER BY Salary;


-- UPPER CASE

SELECT upper(first_name) FROM employees LIMIT 100;


-- LOWER CASE

SELECT lower(first_name) FROM employees LIMIT 100;

-- SUBSTRING
SELECT first_name FROM employees LIMIT 100;
SELECT substring(first_name,2,4) FROM employees LIMIT 100;

-- LENGHT

SELECT length(first_name) FROM employees LIMIT 100;

-- NOW 

SELECT NOW()

SELECT ROUND(10.5556677)

SELECT ROUND(10.5556677,2)



