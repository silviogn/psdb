
-- 1 -------------------
SELECT * FROM employees;

-- 2 -------------------
SELECT emp_no, first_name FROM employees;

-- 3 -------------------
SELECT DISTINCT first_name FROM employees;

-- 4 -------------------
SELECT DISTINCT first_name FROM employees
ORDER BY first_name;

-- 5 -------------------
SELECT DISTINCT first_name FROM employees
ORDER BY first_name DESC;

-- 6 -------------------
SELECT distinct first_name FROM employees
ORDER BY first_name ASC;

-- 7 -------------------
SELECT DISTINCT first_name, last_name FROM employees;

-- 8 -------------------
SELECT DISTINCT first_name, last_name FROM employees
order by first_name, last_name;

-- 9 -------------------
SELECT DISTINCT first_name, last_name FROM employees
order by first_name desc, last_name desc;

-- 10 -------------------
SELECT DISTINCT first_name, last_name FROM employees
order by first_name desc, last_name desc;

-- 11 -------------------
SELECT * FROM employees LIMIT 100;

-- 12 -------------------
SELECT * FROM employees  ORDER BY emp_no  LIMIT 100;

-- 13 -------------------
SELECT * FROM employees  ORDER BY emp_no ASC  LIMIT 100;

-- 14 -------------------

SELECT * FROM employees  ORDER BY emp_no DESC  LIMIT 100;

-- 15 -------------------
SELECT * FROM employees   WHERE FIRST_NAME = 'Basil';

-- 16 -------------------
SELECT * FROM employees   WHERE first_name = 'Basil' 
AND gender = 'M';

-- 17 -------------------
SELECT * FROM employees  WHERE first_name = 'Basil' 
AND gender <> 'M';

-- 18 -------------------
SELECT * FROM employees
WHERE
first_name = 'Basil'
AND gender = 'M'
AND last_name = 'Strooper';

-- 19 -------------------
SELECT * FROM employees  WHERE
first_name LIKE 'Crist%' ;

-- 20 -------------------
SELECT * FROM employees
WHERE
first_name LIKE '%zette' ;

-- 21 -------------------
SELECT * FROM employees
WHERE
FIRST_NAME LIKE '%zette'
AND GENDER = 'M';

-- 22 -------------------
SELECT * FROM employees
WHERE
first_name LIKE '%arvi%';

-- 23 -------------------
SELECT * FROM employees
WHERE
first_name LIKE '%arvi%'
AND gender = 'M';

-- 24 -------------------
SELECT *
FROM employees
WHERE
(first_name = 'Yinghua' OR
first_name = 'Elvis');

-- 25 ------------------- AQUi

SELECT *
FROM employees
WHERE
(first_name = 'Yinghua' OR  first_name = 'Elvis')
AND gender = 'M';

-- 26 -------------------

SELECT * FROM employees WHERE emp_no = 14037;

-- 27 -------------------

SELECT first_name, last_name FROM employees 
WHERE emp_no = 14037;

-- 28 -------------------

SELECT * FROM employees WHERE emp_no 
IN (15037,14039,16039)

-- 29 -------------------

SELECT * FROM employees WHERE emp_no 
BETWEEN 14037 AND 14047;

-- 30 -------------------

SELECT * FROM employees WHERE 
emp_no >= 14037 AND emp_no <= 14047;

-- 31 -------------------

SELECT * FROM employees  
WHERE first_name LIKE 'Crist%' AND emp_no > 485733;

-- 32 -------------------

SELECT * FROM employees 
 WHERE first_name LIKE 'Crist%' 
 AND emp_no >= 485733;

-- 33 -------------------

SELECT * FROM employees  
WHERE first_name LIKE '%Crist%' AND emp_no < 37126;

-- 34 -------------------

SELECT * FROM employees  
WHERE first_name LIKE '%Crist%' AND emp_no <= 37126;
-- 35 -------------------

  SELECT * FROM employees  
  WHERE emp_no IN (494831,479832,599833,499832) 
  AND gender IN ('M','F');

-- 36 -------------------

SELECT * FROM employees  
WHERE  emp_no IN (494831,479832,599833,499832) 
AND gender IN ('M','F') LIMIT 10;

-- 37 -------------------

  SELECT * FROM employees emp   
  WHERE  emp.emp_no IN (494831,479832,599833,499832)
  AND emp.gender IN ('M','F');

-- 38 -------------------

SELECT emp.emp_no 'Numero', emp.first_name 'Nome' 
FROM employees emp   
WHERE  emp.emp_no IN (494831,479832,599833,499832)
 AND emp.gender IN ('M','F');
