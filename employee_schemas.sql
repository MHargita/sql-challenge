
drop table departments;

create table departments (	
	dept_no VARCHAR,
	dept_name VARCHAR,
	CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no")
);

select * from departments;

create table dept_emp (
	emp_no INT,
	dept_no VARCHAR
);

select * from dept_emp;

create table dept_manager(
	dept_no VARCHAR,
	emp_no INT
);

select * from dept_manager;

drop table employees;

create table employees (
	emp_no INT,
	emp_title_id VARCHAR,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR,
	CONSTRAINT "pk_employees" PRIMARY KEY (
   	    "emp_no")
);

select * from employees;

drop table salaries;

create table salaries (
	emp_no INT,
	salary INT,
	CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no")
);

select * from salaries;

drop table titles;

create table titles (
	title_id VARCHAR(10),
	title VARCHAR,
	constraint "pk_titles" primary KEY(
	"title_id")
);

select * from titles;

insert into titles (title_id, title)
values ('s0001', 'Staff'),
('s0002','Senior Staff'),
('e0001', 'Assistant Engineer'),
('e0002', 'Engineer'),
('e0003', 'Senior Engineer'),
('e0004', 'Technique Leader'),
('m0001', 'Manager');




ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

