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
