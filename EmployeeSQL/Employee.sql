-- List employee number, first name, last name, gender, and salary
select e.emp_no, e.first_name, e.last_name, e.gender, s.salary
from employees e
inner join salaries s
on (e.emp_no = s.emp_no)
order by emp_no;

-- List employees hired in 1986
select emp_no, first_name, last_name, hire_date
from employees
where hire_date like '1986%'

-- List the manager of each department: 
-- department number, department name, the manager's employee number, last name, 
-- first name, and start and end employment dates.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, e.hire_date as start_employment_date, s.to_date as end_employment_date
FROM dept_manager dm
LEFT JOIN departments d
ON dm.dept_no = d.dept_no
LEFT JOIN employees e
ON e.emp_no = dm.emp_no
LEFT JOIN salaries s
ON e.emp_no = s.emp_no; 

-- List the department of each employee: 
-- employee number, last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp de
left join employees e
on de.emp_no = e.emp_no
left join departments d
on de.dept_no = d.dept_no
order by emp_no;

-- List all employees whose first name is "Hercules" and last names begin with "B."
select emp_no, first_name, last_name
from employees
where first_name = 'Hercules'
and last_name like 'B%';

-- List all employees in the Sales department:
-- employee number, last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp de
left join employees e
on de.emp_no = e.emp_no
left join departments d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments:
-- employee number, last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp de
left join employees e
on de.emp_no = e.emp_no
left join departments d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
select last_name, count(last_name)
from employees
group by last_name
order by count desc


