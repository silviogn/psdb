-- UNION
SELECT employees.first_name from employees where emp_no = 11800

UNION 

SELECT employees.first_name from employees where emp_no = 12160;


-- UNION ALL

SELECT employees.first_name from employees where emp_no = 11800

UNION ALL 

SELECT employees.first_name from employees where emp_no = 12160;





-- INNER 1
select 
	employees.first_name,
	employees.last_name,
	salaries.from_date,
	salaries.to_date,
	salaries.salary
from employees
inner join salaries
on salaries.emp_no = employees.emp_no
where employees.emp_no = 10006
order by salaries.from_date;

-- INNER
select 
	departments.dept_name,dept_emp.from_date,dept_emp.to_date
from employees

inner join dept_emp
on dept_emp.emp_no = employees.emp_no

inner join departments
on departments.dept_no = dept_emp.dept_no

where employees.emp_no = 10060;


-- LEFT JOIN

select employees.first_name,employees.last_name,departments.dept_name
from employees 

left join dept_manager 
on dept_manager.emp_no = employees.emp_no 

left join departments 
on departments.dept_no = dept_manager.dept_no

where employees.emp_no in (110022,110085,10006);

-- right join 

insert into departments values ('d99','Compras internas');

select employees.first_name,employees.last_name,departments.dept_name
from employees 

right join dept_manager 
on dept_manager.emp_no = employees.emp_no 

right join departments 
on departments.dept_no = dept_manager.dept_no





