--DROP TABLE departments;

CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

SELECT * FROM departments;

--DROP TABLE dept_emp;

CREATE TABLE dept_emp (
	emp_no INTEGER,
	dept_no VARCHAR,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

DROP TABLE dept_manager;

CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INTEGER,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager;

CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

SELECT * FROM employees;

DROP TABLE salaries;

CREATE TABLE salaries (
	emp_no INTEGER PRIMARY KEY,
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;

CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);

SELECT * FROM titles;	

