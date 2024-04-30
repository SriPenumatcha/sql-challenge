-- Drop existing tables if they exist
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS departments;


-- Create table for departments
Create table departments(
dept_no varchar(4) not Null primary key,
dept_name varchar(255) not Null
);

-- Create table for titles
create table titles(
title_id varchar(5) not Null primary key,
title varchar(255) not Null);

-- Create table for employees
Create table employees(
emp_no int not Null primary key,
emp_title varchar(5) not Null,
birth_date varchar(10),
first_name varchar(255),
last_name varchar(255),
sex char(1),
hire_date varchar(10),
foreign key (emp_title) references titles(title_id)
);
-- Create table for department-employee relationships
Create table dept_emp(
emp_no int not Null,
dept_no varchar(4) not Null,
foreign key (dept_no) references departments(dept_no),
foreign key (emp_no) references employees(emp_no)	
);

-- Create table for department managers
create table dept_manager(
dept_no varchar(4) not Null,
emp_no int not Null,
foreign key (dept_no) references departments(dept_no),
foreign key (emp_no) references employees(emp_no)
);

-- Create table for salaries
create table salaries(
emp_no int not Null primary key,
salary int not Null,
foreign key (emp_no) references employees(emp_no)
);


/* Import the data from the CSV files(sql-challenge\Data) into relevant tables 
-- Run select statements to view the records*/

select * from departments;
select * from titles;
select * from employees;
select * from dept_emp;
select * from dept_manager;
select * from salaries;






