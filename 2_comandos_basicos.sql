-- COMANDO SELECT

SELECT * FROM departments;

SELECT departments.* FROM departments;

SELECT dept_no,dept_name FROM departments;

SELECT departments.dept_no, department.dept_name FROM departments;

-- FROM CLAUSES

SELECT * FROM departments;

SELECT * FROM departments,dept_emp;

SELECT departments.dept_name, dept_emp.* FROM departments, dept_emp;

-- WHERE CLAUSES

SELECT column_list FROM table_name WHERE condition ;

DELETE FROM table_name WHERE condition ;

UPDATE table_name SET column1=value1,
 column2=value2, ..., columnn=valuen WHERE condition ;

-- The comparison predicates (=, <, >, <>, <=, >=)

SELECT employees.* FROM employees WHERE employees.emp_no = 10001;

SELECT employees.* FROM employees WHERE employees.emp_no > 10001;

SELECT employees.* FROM employees WHERE employees.emp_no < 10005;

SELECT employees.* FROM employees WHERE employees.emp_no <> 10001;

-- AND

SELECT employees.* FROM employees WHERE
 employees.emp_no =  10001
 AND last_name = 'Facello';

SELECT employees.* FROM employees WHERE employees.emp_no =  10001 AND last_name = 'Maradona';

SELECT employees.* FROM employees WHERE (employees.emp_no =  10001) AND (last_name = 'Facello');

-- OR

SELECT employees.* FROM employees WHERE
 employees.emp_no =  10001 OR  last_name = 'Facello';

SELECT employees.* FROM employees WHERE employees.emp_no =  10000 OR  last_name = 'Maradona';

-- NOT

SELECT employees.* FROM employees WHERE
 NOT (employees.emp_no =  10001);

SELECT employees.* FROM employees WHERE NOT (employees.emp_no <>  10001);

-- BETWEEN

SELECT employees.* FROM
employees WHERE employees.emp_no
 between 10001 AND 10005;

SELECT departments.* FROM departments WHERE departments.dept_no  between 'd001' AND 'd003';

SELECT departments.* FROM departments WHERE departments.dept_no  between 'd001X' AND 'd003';

-- IN [NOT IN]

SELECT employees.* FROM employees
WHERE employees.emp_no  IN  (10001,10005);

SELECT employees.* FROM employees WHERE employees.emp_no  NOT IN  (10001,10005);

SELECT departments.* FROM departments WHERE departments.dept_no  IN('d001','d003');

SELECT departments.* FROM departments
 WHERE departments.dept_no  NOT IN('d001','d003');

-- LIKE [NOT LIKE] % _

SELECT departments.* FROM departments WHERE
departments.dept_name LIKE 'Mar%';

SELECT departments.* FROM departments
 WHERE departments.dept_name LIKE '%rketing';

SELECT departments.* FROM departments WHERE
departments.dept_name LIKE '%rket%';

SELECT departments.* FROM departments WHERE departments.dept_no  LIKE '_001';

SELECT departments.* FROM departments WHERE departments.dept_no  LIKE 'd00_';

-- NULL [NOT NULL]

SELECT * FROM departments WHERE departments.level IS NULL

SELECT * FROM departments WHERE departments.level IS NOT NULL

-- ALIASES

SELECT d.* FROM departments d

SELECT d.dept_name FROM departments d

SELECT d.dept_name FROM departments d WHERE d.dept_no = 'd002;
