
-- Creating tables for PH-EmployeeDB
Create Table departments (
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(40) NOT NULL,
	Primary Key (dept_no),
	Unique (dept_name)
);

CREATE TABLE employees (
	emp_no Integer Not Null,
	birth_date date Not Null,
	first_name VARCHAR Not Null,
	last_name VARCHAR Not Null,
	gender VARCHAR Not Null,
	hire_date date Not Null,
	Primary Key (emp_no),
	Unique (emp_no)
);

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
    emp_no Integer NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

Create Table dept_emp (
	dept_no VARCHAR(4) Not Null,
	emp_no Integer Not Null,
	from_date Date Not Null,
	to_date Date Not Null,
	Foreign Key (dept_no) References departments (dept_no),
	Foreign Key (emp_no) References employees (emp_no),
	Foreign key (emp_no) References salaries (emp_no),
	Primary Key (dept_no, emp_no),
	Unique (dept_no, emp_no)
);

Create Table titles (
	emp_no Integer Not Null,
	title Varchar Not Null,
	from_date Date Not Null,
	to_date Date Not Null,
	Foreign Key (emp_no) References salaries (emp_no),
	Foreign Key (emp_no) References employees (emp_no),
	Primary Key (emp_no),
	Unique (emp_no)
);

Select * From departments;