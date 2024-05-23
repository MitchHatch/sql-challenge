--List the employee number, last name, first name,
--sex, and salary of each employee.

select
	employees.last_name,
	employees.first_name,
	employees.sex,
	employees.emp_no,
	salaries.emp_no,
	salaries.salary
from salary
left join salaries.emp_no = employees.emp_no

--List the first name, last name, 
--and hire date for the employees who were hired in 1986.

select 
	employees.last_name,
	employees.first_name,
	employees.hire_date
from employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- List the manager of each department along with their department number,
--department name, employee number,last name, and first name.

select 
	dept_manager.dept_no,
	dept_manager.emp_no,
	employees.first_name,
	employees.last_name,
	employees.emp_no AS employee_emp_no,
	departments.dept_name,
	departments.dept_no as department_dept_np
from 
	dept_manager
left join employees
	on dept_manager.emp_no = employees.emp_no
left join departments
	on departments.dept_no = dept_manager.dept_no

--List the department number for each employee 
--along with that employee’s employee number, last name, 
--first name, and department name.

select 
	dept_emp.emp_no,
	dept_emp.dept_no,
	employees.first_name,
	employees.last_name,
	employees.emp_no,
	departments.dept_name,
	departments.dept_no
from 
	dept_emp
left join employees
	on dept_emp.emp_no = employees.emp_no
left join departments
	on departments.dept_no = dept_emp.dept_no


--List first name, last name, and sex of each employee 
--whose first name is Hercules and whose last name begins with the letter B.

select
	employees.first_name,
	employees.last_name,
	employees.sex
from employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

--List each employee in the Sales department, 
--including their employee number, last name, and first name.

select 
	dept_emp.emp_no,
	dept_emp.dept_no,
	employees.first_name,
	employees.last_name,
	employees.emp_no as employees_emp_no,
	departments.dept_name,
	departments.dept_no as departments_dept_no
from 
	dept_emp
left join employees
	on dept_emp.emp_no = employees.emp_no
left join departments
	on departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'

--List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

select 
	dept_emp.emp_no,
	dept_emp.dept_no,
	employees.first_name,
	employees.last_name,
	employees.emp_no as employees_emp_no,
	departments.dept_name,
	departments.dept_no as departments_dept_no
from 
	dept_emp
left join employees
	on dept_emp.emp_no = employees.emp_no
left join departments
	on departments.dept_no = dept_emp.dept_no
WHERE 
	departments.dept_name = 'Sales' or
	departments.dept_name = 'Development'

--List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name).

select 
	employees.last_name, count(*) as frequency
from 
	employees
group by last_name
order by frequency DESC