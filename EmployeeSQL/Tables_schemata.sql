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