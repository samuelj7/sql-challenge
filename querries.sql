
--Question 1
select employees.emp_no, last_name, first_name, sex, salaries.salary 
from employees 
join salaries 
on salaries.emp_no = employees.emp_no;

--Question 2
select first_name, last_name, hire_date 
from employees 
where hire_date 
like '%1986%'

-- Question 3
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, last_name, first_name from dept_manager join employees on employees.emp_no = dept_manager.emp_no join departments on departments.dept_no = dept_manager.dept_no;

--Question 4
select dept_emp.dept_no, departments.dept_name, dept_emp.emp_no,last_name, first_name from dept_emp join employees on employees.emp_no = dept_emp.emp_no join departments on departments.dept_no = dept_emp.dept_no;

--Question 5
select first_name, last_name, sex from employees where first_name = 'Hercules' and last_name like 'B.%';

--Question 6
select employees.emp_no, first_name, last_name, departments.dept_name from employees join dept_emp on employees.emp_no = dept_emp.emp_no join departments on departments.dept_no = dept_emp.dept_no where departments.dept_name = 'Sales';

--Question 7
select employees.emp_no, first_name, last_name, departments.dept_name from employees join dept_emp on employees.emp_no = dept_emp.emp_no join departments on departments.dept_no = dept_emp.dept_no where departments.dept_name = 'Sales' or departments.dept_name='Development';

--Question 8
select last_name, count(*) from employees group by last_name order by last_name desc;

