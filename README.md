# Employee Database: A Mystery in Two Parts

## Background
I have been tasked to investigate employees of Pewlett Hackard from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

## Data Modeling
First the CSVs were inspected and an ERD sketch of the tables was made using http://www.quickdatabasediagrams.com.
<img src="EmployeeSQL/images/ERD of employees database.png">

## Data Engineering
A table schema for each of the six CSV files was created using the ERD as a base. For each file I had to specify data types, primary keys, foreign keys, and other constraints. Next I imported each CSV file into the corresponding SQL table.

## Data Analysis
Once I had a complete database I wanted to create the following queries to get a better understanding of the data.

1) Employee number, last name, first name, gender, and salary.
<img src="EmployeeSQL/images/1.png">

2) List employees who were hired in 1986.
<img src="EmployeeSQL/images/2.png">

3) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
<img src="EmployeeSQL/images/3.png">

4) List the department of each employee with the following information: employee number, last name, first name, and department name.
<img src="EmployeeSQL/images/4.png">

5) List all employees whose first name is "Hercules" and last names begin with "B."
<img src="EmployeeSQL/images/5.png">

6) List all employees in the Sales department, including their employee number, last name, first name, and department name.
<img src="EmployeeSQL/images/6.png">

7) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
<img src="EmployeeSQL/images/7.png">

8) In descending order, listed the frequency count of employee last names, i.e., how many employees share each last name.
<img src="EmployeeSQL/images/8.png">

9) Searched ID number 499942.
<img src="EmployeeSQL/images/9.png">


As I examined the data, I had a suspicion that the dataset is fake. I decided to import the SQL database into Pandas using SQLAlchemy and created the following charts: 

Histogram to visualize the most common salary ranges for employees.

<img src="EmployeeSQL/images/Salary Ranges for Employees.png">

Bar chart of average salary by title.

<img src="EmployeeSQL/images/Salary Breakdown by Title.png">
