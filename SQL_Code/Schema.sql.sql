DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
	dept_no VARCHAR(30),
	dept_name VARCHAR(30));

DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(30),
	from_date VARCHAR(30),
	to_date VARCHAR(30));
	
DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager (
	dept_no VARCHAR(30),
	emp_no INT,
	from_date VARCHAR(30),
	to_date VARCHAR(30));
	
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
	emp_no INT,
	birth_date VARCHAR(30),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender VARCHAR(30),
	hire_date VARCHAR(30));

DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	from_date VARCHAR(30),
	to_date VARCHAR(30));
	
DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	emp_no INT,
	title VARCHAR,
	from_date VARCHAR(30),
	to_date VARCHAR(30));
