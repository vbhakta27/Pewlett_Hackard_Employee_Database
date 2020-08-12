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

Bonus (Optional)
As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:


Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research. Feel free to use the code below to get started. Be sure to make any necessary modifications for your username, password, host, port, and database name:
from sqlalchemy import create_engine
engine = create_engine('postgresql://localhost:5432/<your_db_name>')
connection = engine.connect()




Consult SQLAlchemy documentation for more information.


If using a password, do not upload your password to your GitHub repository. See https://www.youtube.com/watch?v=2uaTPmNvH0I and https://martin-thoma.com/configuration-files-in-python/ for more information.




Create a histogram to visualize the most common salary ranges for employees.


Create a bar chart of average salary by title.



Epilogue
Evidence in hand, you march into your boss's office and present the visualization. With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." You look down at your badge to see that your employee ID number is 499942.
