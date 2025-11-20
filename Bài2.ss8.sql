create database company;
use company;
create table employees ( 
employee_id int primary key,
employee_name varchar(100),
employee_department varchar(50),
employee_salary decimal,
employee_date date 
);
select count(*) as number_of_employees
from employees;
select sum(employee_salary) as total_monthly_salary
from employees;
select avg(employee_salary) as average_salary
from employees;
select max(employee_salary) as highest_salary
from employees;
select min(employee_salary) as lowest_salary
from employees;
select min(employee_date) as earliest_hire_date
from employees;
select sum(employee_salary) as it_department_salary from employees
where employee_department = 'IT';

