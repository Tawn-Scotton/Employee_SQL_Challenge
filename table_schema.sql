-- Creating table schema

-- Create table department_table

DROP TABLE department_table;

CREATE TABLE department_table (
  dept_no VARCHAR,
  dept_name VARCHAR NOT NULL,
  PRIMARY KEY (dept_no)
);

select * from department_table;


-- Create table employee_table

DROP TABLE employee_table;

CREATE TABLE employee_table (
	emp_no INT NOT NULL,
	emp_title VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	SEX VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

select * from employee_table;


--Create table department_employee_table

DROP TABLE department_employee_table;

CREATE TABLE department_employee_table (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp;


-- Create table department_manager_table

DROP TABLE department_manager_table;

CREATE TABLE department_manager_table (
 dept_no VARCHAR ,
 emp_no INT,
 from_date DATE NOT NULL,
 to_date DATE NOT NULL,
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from deptartment_manager_table;



--Creating salary_table

DROP TABLE salary_table;

CREATE TABLE salary_table(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employee_table(emp_no)
);

select * from salary_table;


--Creating title_table

DROP TABLE title_table;

CREATE TABLE title_table (
	emp_no INT NOT NULL,
	title VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employee_table(emp_no)
);

select * from title_table;
