--List the employee number, last name, first name, sex, and salary of each employee.

select emp.emp_no,emp.last_name,emp.first_name,emp.sex,sal.salary 
from employees emp 
JOIN salaries sal
on emp.emp_no=sal.emp_no
order by emp_no

--List the first name, last name, and hire date for the employees who were hired in 1986.

select first_name,last_name,hire_date from employees
where hire_date like '%1986'

--List the manager of each department along with their department number, department name, employee number, last name, and first name

select departments.dept_no,departments.dept_name,
dept_manager.emp_no,
employees.last_name,employees.first_name
from departments
JOIN dept_manager ON departments.dept_no=dept_manager.dept_no
JOIN employees ON employees.emp_no=dept_manager.emp_no

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

select dept_emp.dept_no,dept_emp.emp_no,
employees.last_name,employees.first_name,
departments.dept_name from dept_emp
JOIN employees ON employees.emp_no=dept_emp.emp_no
JOIN departments ON departments.dept_no=dept_emp.dept_no 

--List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select first_name,last_name,employees.sex from employees
where first_name='Hercules' and last_name like 'B%'

--List each employee in the Sales department, including their employee number, last name, and first name.

select dept_emp.emp_no,employees.last_name,employees.first_name
from dept_emp 
JOIN departments ON departments.dept_no=dept_emp.dept_no and departments.dept_name='Sales'
JOIN employees on employees.emp_no=dept_emp.emp_no

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

select dept_emp.emp_no,employees.last_name,employees.first_name,departments.dept_name
from dept_emp 
JOIN departments ON departments.dept_no=dept_emp.dept_no and departments.dept_name in ('Sales','Development')
JOIN employees on employees.emp_no=dept_emp.emp_no

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

select count(emp_no) as frequency_count,last_name 
from employees 
group by last_name order by last_name desc



