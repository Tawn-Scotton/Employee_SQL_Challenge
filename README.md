# Employee_SQL_Challenge
Data Engineering and Data Analysis using postgres and pgadmin4

#postgres,#postgresql, #csv #excel, #quickdbd, #employee-management, #database, #database-schema
Background
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

Before You Begin
Create a new repository for this project called sql-challenge. Do not add this assignment to an existing repository.

Clone the new repository to your computer.

Inside your local Git repository, create a directory for this Challenge. Use a folder name that corresponds to the Challenge, such as EmployeeSQL.

Note that you’ll add your files to this folder and push the changes to GitHub.

Files
Download the following files to help you get started:

Module 9 Challenge filesLinks to an external site.

Instructions
This Challenge is divided into three parts: data modeling, data engineering, and data analysis.

Data Modeling
Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. To create the sketch, feel free to use a tool like QuickDBDLinks to an external site..

Data Engineering
Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

Remember to specify the data types, primary keys, foreign keys, and other constraints.

For the primary keys, verify that the column is unique. Otherwise, create a composite keyLinks to an external site., which takes two primary keys to uniquely identify a row.

Be sure to create the tables in the correct order to handle the foreign keys.

Import each CSV file into its corresponding SQL table.

HINT
Data Analysis
List the employee number, last name, first name, sex, and salary of each employee.

List the first name, last name, and hire date for the employees who were hired in 1986.

List the manager of each department along with their department number, department name, employee number, last name, and first name.

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

List each employee in the Sales department, including their employee number, last name, and first name.

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

Requirements
Data Modeling (10 points)
Entity Relationship Diagram is included or table schemas provided for all tables (10 points)
Data Engineeing (70 points)
All required columns are defined for each table (10 points)
Columns are set to the correct data type (10 points)
Primary Keys set for each table (10 points)
Correctly references related tables (10 points)
Tables are correctly related using Foreign Keys (10 points)
Correctly uses NOT NULL condition on necessary columns (10 points)
Accurately defines value length for columns (10 points)
Data Analysis (20 points)
List the employee number, last name, first name, sex, and salary of each employee (2 points)
List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
List each employee in the Sales department, including their employee number, last name, and first name (2 points)
List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
![QuickDBD-Employee_SQL](https://user-images.githubusercontent.com/119641369/222856854-094ffdfb-78b3-45e9-88b9-97cca02538d9.png)


Data Engineering Overview
There were 6 total tables included in the CSV dataset:
•	Department table
•	Department employee table
•	Department manager
•	Employee table
•	Salary table 
•	Title table
It was found that there are really two "main" tables: department table and employee tables. The other tables relate to these two tables. As such, department table has the department no primary key while employees holds the employee no primary key and the other four tables have at least one of those two fields as foreign keys.
Relationships
•	employee table:  1-to-many to department employee employees can belong to more than one department over time (for example, switching departments)
•	department table: many-to-many to department manager table: departments can multiple managers assigned to them over time. Managers can (theoretically at least) manage multiple departments over time
•	employee table: many-to-many to titles: employees can have more than one title as they may be promoted. One title can have many employees assigned with the same title. Therefore, a many-to-many relationship
•	employees many-to-many to salaries: mirror of previous relationship. Because employees can have more than one title as they get promoted, they may have more than one salary level. One salary level can have many employees as multiple employees can make the same salary. Therefore, a many-to-many relationship
•	employee table many-to-1 to department employee table   a department can contain multiple employees.
•	employee table many-to-1 to department manager table: a manager can have many employees under his/her team
Data Types
•	All *date columns defined to be DATE type
•	Variable character columns set to VARCHAR(100)
•	Employee no set to INTEGER
•	Department no  to CHAR since department values always set at 'd###
•	gender set to CHAR since value is either 'M' or 'F' in case someone typed male or female instead of the letter “M” or “F”

TEXT version of ERD

Title_Table
-
title_id pk varchar FK >- Employee_Table.title_id
title fk varchar

Salary_Table
-
employee_no pk int FK >- Employee_Table.employee_no
salary  int

Employee_Table
-
employee_no pk int FK >- Department_Manager_Table.employee_no
title_id VARCHAR
birth_date DATE
first_name VARCHAR
last_name  VARCHAR
hire_date VARCHAR

Department_Manager_Table
-
dept_no pk VARCHAR 
employee_no INT

Department_Employee_Table
-
employee_no pk int FK >- Employee_Table.employee_no
dept_no VARCHAR FK >- Department_Table.dept_no

Department_Table
-
dept_no pk VARCHAR FK >- Department_Manager_Table.dept_no
dept_name VARCHAR 










