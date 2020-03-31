-- Drop all tables
drop table dept_emp;
drop table dept_manager;
drop table departments;
drop table salaries;
drop table titles;
drop table employees;

-- Create all tables and establish relationships between them
CREATE TABLE employees (
	emp_no int NOT NULL PRIMARY KEY,
    birth_date varchar NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    gender varchar(1) NOT NULL,
    hire_date varchar NOT NULL);
	
CREATE TABLE departments (
    dept_no varchar(4) NOT NULL PRIMARY KEY,
    dept_name varchar NOT NULL);

CREATE TABLE titles (
    emp_no int NOT NULL,
    title varchar NOT NULL,
    from_date varchar NOT NULL,
    to_date varchar NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

CREATE TABLE salaries (
    emp_no int NOT NULL PRIMARY KEY,
    salary int NOT NULL,
    from_date varchar NOT NULL,
    to_date varchar NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

CREATE TABLE dept_manager (
    dept_no varchar(4) NOT NULL,
    emp_no int NOT NULL PRIMARY KEY,
    from_date varchar NOT NULL,
    to_date varchar NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no));
	
CREATE TABLE dept_emp (
    emp_no int NOT NULL,
    dept_no varchar(4) NOT NULL,
    from_date varchar NOT NULL,
    to_date varchar NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no));
	
----------------------------------------------------------------------------
-- Must import departments and employees tables first since all other tables 
-- have relationships with them
----------------------------------------------------------------------------

-- List employee number, first name, last name, gender, and salary
select e.emp_no, e.first_name, e.last_name, e.gender, s.salary
from employees e
inner join salaries s
on (e.emp_no = s.emp_no)
order by emp_no;

-- List employees hired in 1986
select * 
from employees
where hire_date like '1986%'

-- List the manager of each department: 
-- department number, department name, the manager's employee number, last name, 
-- first name, and start and end employment dates.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
LEFT JOIN departments d
ON dm.dept_no = d.dept_no
LEFT JOIN employees e
ON e.emp_no = dm.emp_no; 
-- still need to find out where to get start and end employment dates

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
select * from employees
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


