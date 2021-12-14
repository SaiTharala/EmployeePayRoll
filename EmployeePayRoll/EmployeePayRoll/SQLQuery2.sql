-- UC-1-create Database
create database payroll_service1
use payroll_service1

-- UC-2-creating Table
create table employee_payroll
( emp_id int not null identity(1,1) primary key,
  Emp_name varchar(50),
  salary double precision not null,
  start date not null,
  )
  --UC3-Creating Employee Payroll Data
  insert into employee_payroll (Emp_name,salary,start) values
  ('TSP',5000000.00,'2021-12-14'),
  ('SPT',6000000.00,'2021-12-13'),
  ('Acc',7000000.00,'2021-12-12'),
  ('Cog',8000000.00,'2021-12-11')
  
  --UC4-Retrieve Data From Table
   select * from employee_payroll

  --UC5 Selected Data Retrieve 1
  select salary from employee_payroll where Emp_name = 'SPT'
  select * from employee_payroll
  where start between cast ('2019-03-02' as date) and getdate();

  --UC6-Alter Table
  alter table employee_payroll add gender char(1)
  update employee_payroll set gender = 'M' where Emp_name = 'TS'
  update employee_payroll set gender = 'F' where Emp_name = 'SAM'
  update employee_payroll set gender = 'M' where Emp_name = 'ST' or Emp_name = 'SAMU'

  --UC7-Aggregate Functions
  select sum(salary) from employee_payroll where gender = 'M' group by gender
  select sum(salary) from employee_payroll where gender = 'F' group by gender
  
  select avg(salary) from employee_payroll where gender = 'M' group by gender
  select avg(salary) from employee_payroll where gender = 'M' group by gender
  
  select min(salary) from employee_payroll where gender = 'M' group by gender
  select min(salary) from employee_payroll where gender = 'M' group by gender
  
  select max(salary) from employee_payroll where gender = 'M' group by gender
  select max(salary) from employee_payroll where gender = 'M' group by gender
  
  select count(gender) from employee_payroll where gender = 'M' group by gender
  select count(gender) from employee_payroll where gender = 'M' group by gender 