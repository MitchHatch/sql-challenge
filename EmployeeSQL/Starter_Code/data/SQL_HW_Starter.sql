DROP TABLE IF EXISTS "departments";
DROP TABLE IF EXISTS "dept_emp";0
DROP TABLE IF EXISTS "dept_manager";
DROP TABLE IF EXISTS "employees";
DROP TABLE IF EXISTS "salaries";
DROP TABLE IF EXISTS "titles";

CREATE TABLE "departments" (
    "dept_no" varchar(30)   NOT NULL,
    "dept_name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"));		

CREATE TABLE "dept_emp" (
    "emp_no" int,
    "dept_no" varchar(50)   NOT NULL);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(30)   NOT NULL,
    "emp_no" int);
   
CREATE TABLE "employees" (
    "emp_no" int,
    "emp_tittle_id" varchar(30) NOT NULL,
	"birth_date" date,
	"first_name" varchar(30) NOT NULL,
	"last_name" varchar(30) NOT NULL,
	"sex" varchar(2) NOT NULL,
	"hire_date" date,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"));

CREATE TABLE "salaries" (
    "emp_no" int,
    "salary" int);

CREATE TABLE "titles" (
    "title_id" varchar(30)   NOT NULL,
    "title" varchar(50)   NOT NULL);