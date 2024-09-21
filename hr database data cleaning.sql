select*from Employees;
select*from Departments;

select First_Name+' '+Last_Name as 'full name'
from Employees

alter table employees
add [full+' '+name] varchar(255) 

 update Employees
 set [full+' '+name]=  First_Name+' '+Last_Name 
 
 select DATEADD(day,cast(hire_date as int ),'1900-01-01') as hire_date_converted
 from Employees

 update Employees
 set Hire_Date= DATEADD(day,cast(hire_date as int ),'1900-01-01') 

 select DATENAME(weekday,hire_date)
from Employees

alter table employees
add [name of day] varchar (255)

update Employees
set [name of day] = DATENAME(weekday,hire_date) 

SELECT 
    CASE 
        WHEN Commission_PCT IS NULL THEN 0.01 
        ELSE Commission_PCT 
    END AS CommissionValue
FROM Employees;

update Employees
set Commission_PCT= CASE 
        WHEN Commission_PCT IS NULL THEN 0.01 
        ELSE Commission_PCT 
    END 

	select 
	PARSENAME(replace([Employee_ID-Salary-Department_ID],'-','.'),3),
		PARSENAME(replace([Employee_ID-Salary-Department_ID],'-','.'),2),
			PARSENAME(replace([Employee_ID-Salary-Department_ID],'-','.'),1)
			from Employees

alter table employees
add employee_id int

update Employees
set employee_id=PARSENAME(replace([Employee_ID-Salary-Department_ID],'-','.'),3)


alter table employees
add salary varchar(255)

update Employees
set salary=PARSENAME(replace([Employee_ID-Salary-Department_ID],'-','.'),2)

alter table employees
add department_id int

update Employees
set department_id=PARSENAME(replace([Employee_ID-Salary-Department_ID],'-','.'),1)

select datename(month, hire_date)
from Employees

alter table employees
add [name of month] varchar(255)

update Employees
set [name of month]=datename(month, hire_date)

select DATEPART(quarter,hire_date)
from Employees

alter table employees
add [quarter of year] varchar(255)

update Employees
set  [quarter of year] = DATEPART(quarter,hire_date)

select YEAR(hire_date)
from Employees

 alter table employees
 add years varchar(255)

 update Employees
 set years=YEAR(hire_date)

 alter table employees
 drop column first_name,last_name,[employee_id-salary-department_id]

 select*,Department_Name,location_id
 from Employees m right join Departments d
 on m.Department_ID=d.Department_ID

 alter table employees
 add department_name varchar(255),location_id varchar(255)

 UPDATE m
SET m.Department_Name = d.Department_Name,
    m.Location_ID = d.Location_ID
FROM Employees m
RIGHT JOIN Departments d ON m.Department_ID = d.Department_ID;

alter table employees
alter column hire_date datetime


