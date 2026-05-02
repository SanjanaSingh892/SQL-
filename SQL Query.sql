use bank;
show tables;
select * from employee;

## Operator's in sql
## Type's of Operator's
## Arithmetic operator
## +, -, *, / 

use company;
show tables;
select * from employees;

## add 5000 bonus in each employee salary 
## + op
select *, salary + 5000 as new_salary from employees;
select employeeid, firstname , salary + 5000 as new_salary from employees;



## - op

-- sub 5000 from each salary 
select *, salary - 5000 as actual_salary from employees;


## * op
select * from employees;

## find the employees annual salary
select *, salary * 12 as annual_salary from employees;


## find the employees a 6 months salary
select *, salary * 6 as  six_monthsalary from employees;


## / op
## Find the half month salary of each employee
select *, salary / 2 as half_salary from employees;

select *, salary + bonus as total_salary from employees;



-- Comparision Operator
-- =, >, <, >=, <= , !=
select * from emp;


## Find the employee whoes is working in It dept
select * from emp where department = 'IT';



## Return the employees whoes salary is equal to 60000
select * from emp where salary = 60000;

## find the employees whoes name is Sneha
select * from emp where name = 'Sneha';


## > op
-- find the employees whoes salary is more than 60000
select * from employees where salary > 60000;

## < op
-- find the employees whoes salary is less than 60000
select * from emp where salary < 60000;


## >= 
-- find the employees whoes salary is more than equal to  60000
select * from employees where salary >= 60000;

## <= 
-- find the employees whoes salary is less than equal to 60000
select * from employees where salary <= 60000;

## != op
## Return the employees whoes is not working in it dept

select * from emp where department  != 'IT';

select * from emp where department = 'IT';


## find the employees whoes saalry is not equal to 60000
select * from emp where salary != 60000;


# 3 : Logical operator
## and 
## or
## not



## and op
## Find the employees whoes is working in it and salary is more than 60000
select * from emp where department = 'IT' and salary > 75000;


## or op
## Find the employees whoes is working in it or salary is more than 60000
select * from emp where department = 'IT' or salary > 60000;


## not op
## Find the employees whoes is not working in sales dept
select * from emp where not department = 'Sales';



## 4: Speical operator
## in
## between
## is null
## is not null


## in op
-- Find the employees whoes is working in it sales, and hr dept
select * from emp where department in ('IT', 'SALES');

## between op
## Find the employees whoes salary in between 60000 to 80000
select * from emp where salary between 60000 and 70000;


## is null

select * from employee;


## Find the employees records where managerid is null
select * from employee where managerid is null;


## IS NOT NULL
## Find the employees records where manager is not null
select * from employee where managerid is not null;




## sorting in sql

## order by, asc, desc

select * from employees;

## Return the employees details and return salary in desc order
select * from employees order by salary desc;


## eturn the employees details and return salary in asc order
select * from employees order by salary asc;



select * from employees order by firstname asc;
select * from employees order by firstname desc;


select * from employees order by hiredate desc;
select * from employees order by hiredate asc;

select * from employees;
select * from employees order by employeeid desc;




use company;
select * from employees;
show tables;

## Like operator
## Like 
## %

## Find the employees whoes name is start with A
select * from employees where firstname like 'A%';

## Find the employees whoes name is end with A
select * from employees where firstname like '%A';

## Find the employee whoes name is start and end with A
select * from employees where firstname like 'A%A';


## LIMIT 

## RETURN TOP 5 ROWS
SELECT * FROM EMPLOYEES LIMIT 5;

SELECT * FROM EMPLOYEES LIMIT 6;


## RETURN BOTTOM 5 ROWS
SELECT * FROM EMPLOYEES ORDER BY EMPLOYEEID DESC LIMIT 5;

## OFFSET
SELECT * FROM EMPLOYEES  LIMIT 5 OFFSET 3;



## FIND THE SECOND HIGHEST SALARY
SELECT * FROM EMPLOYEES ORDER BY SALARY DESC LIMIT 1 OFFSET 1;


## FIND THE THIRD HIGHEST SALARY 
SELECT * FROM EMPLOYEES ORDER BY SALARY DESC LIMIT 1 OFFSET 2;


## set operator
## Union-unqiue records
## Union ALL- all Duplicates records



select * from sales_2023;
select * from sales_2024;



## uninon

select * from sales_2023
union
select * from sales_2024;

## union all

select * from sales_2023
union all
select * from sales_2024;





## Function in sql
## Aggrgate Function
## Sum(), max(), min(), avg(), count()
select * from employees;

-- sum()
## Calculate the total salary
select sum(salary) as total_salary from employees;


--  Max()
## Find the highest salary
select max(salary) as highest_salary from employees;

-- Min()
## Find the lowest salalry
select min(salary) as lowest_salary from employees;


-- Avg()
-- Caluclate avg salary
select avg(salary) as avg_salary from employees;

-- Count()
-- Return the total emps
select count(employeeid) as total_emps from employees;


-- Group By
-- Having

select * from emp;

## calulcate the total salary by department
select department, sum(salary) as total_salary from emp group by department;


## Calculate the avg salary by each dept
select department, avg(salary) as avg_salary from emp group by department;


## Return the number of employees by each dept
select department, count(employeeid) as total_emps from emp group by department;

## Find the highest salary by each dept
select department, max(salary) as highest_salary from emp group by department;


## Find the lowest salary by each dept
select department, min(salary) as lowest_salry from emp group by department;


## having
## calculate dept wise avg salary and return dept having more than 60000 avg salary
select department, avg(salary) as avg_salary from emp group by department  having avg_salary > 60000;



## Caluculate the total salary of it and hr dept only
SELECT 
    department, SUM(salary) AS total_salary
FROM
    emp
WHERE
    department IN ('IT' , 'HR', 'Sales' )
GROUP BY department  having  total_salary > 100000 order by total_salary desc;


## Date and time Function
## now()
## curdate()
## curtime()


-- Return the cureent date
select current_date();

--- Return the current time
select current_time();

-- Return the current date and time
select now();

-- Return date 
use company;
show tables;

select * from orders;
--- date()
-- Return the orderid, productname and orderdate
select  orderid, productname, date(orderdatetime) as orderdate from orders;

-- time()
-- Return the orderid, productname and ordertimes
select orderid, productname, time(orderdatetime) as ordertime from orders;

-- Year() 
-- Return the orderid productname and orderyear
select orderid, productname , year(orderdatetime) as orderyear from orders;

-- month()
-- Return the records with ordermonths
select *, month(orderdatetime) as ordermonth from orders;

-- Day()
-- Return the orderday with customername
select customername, day(orderdatetime) as orderday from orders;

---  hour()
select orderid, customername, hour(orderdatetime) as orderhour from orders;

















## return the details where order day 3rd
select * from orders where day(orderdatetime) = 3;
select * from orders where date(orderdatetime) = '2026-04-02';



-- Return the records of Mobile phone prodcut 
select * from orders where productname = "Mobile Phone";

-- Return the customer details who purchase this keyboard , monitor and printer
select * from orders where productname in ('Keyboard', 'Monitor', 'Printer');

select * from orders;


select * from orders where status = 'Pending';

-- Return the records where quantity is 2 and status is shipped
select * from orders where quantity = 2 and status = 'Shipped';

-- Return the records where quantity is 2 and status is shipped and pending
select * from orders where quantity = 2 and status in ('Shipped', 'Pending');


## Return the status wise total price of pending and deliver ony and return staus details having more than 50000 

SELECT 
    status, SUM(price) AS totalprice
FROM
    orders
WHERE
    status IN ('Pending' , 'Delivered')
GROUP BY status
HAVING totalprice > 10000 order by totalprice asc;

## Return the top 2 status by total price
SELECT 
    status, SUM(price) AS totalprice
FROM
    orders
GROUP BY status
ORDER BY totalprice DESC
LIMIT 2;

## Return status wise total quantity
select orderid,pstatus , sum(quantity) as total_quantity from orders group by status;

select date(orderdatetime) as orderdate, count(orderid) as totalorders from orders
group by orderdate;


## Curdate()
select * , curdate() - date(orderdatetime)  as date_diff from orders;

-- dateadd()
-- add 2 days in each orderdate as new_orderdate
select *, date_add(orderdatetime ,interval 2 day) as new_orderdate from orders;

select *, date_add(orderdatetime, interval 3 day) as deliverdate from orders;

select *, date_add(orderdatetime, interval 2 month) as dleiverdate from orders;

## year
select *, date_add(orderdatetime, interval 1 year) as deliverdate from orders;


-- Date_Sub()
select *, date_sub(orderdatetime, interval 1 year) as deliverdate from orders;

select *, date_sub(orderdatetime, interval 1 month) as deliverdate from orders;
select *, date_sub(orderdatetime, interval 1 day) as deliverdate from orders;

## datediff
select *, datediff(now(), orderdatetime  ) as datdiff from orders;


-- Text Function in sql (string function)
select * from employee;

-- concatenate()
-- return id,  fullname and salary
select employeeid, concat(firstname, " ", lastname) as full_name, salary from employee;

-- upper()
select employeeid, upper(firstname) as name from employee;

--  lower()
select  employeeid, lower(firstname) as name from employee;


-- left function
select employeeid, upper(left(firstname , 1)) as name from employee;

--- Right Function
select employeeid,  firstname,right(firstname, 1) as last_letter from employee;


-- Len
select employeeid,  concat(firstname, " ", lastname) as name ,length(concat(firstname, " ", lastname)) as length from employee;

-- mid
select employeeid, email, mid(email, 3, 5) as mid_info from employee;




-- sorting in sql
-- order by 
-- asc , desc order

select * from employees;


-- Return the 



-- limit , offset


-- return the top 5 rows;
select * from employees limit 5;

-- return the top paid emps - bases of salary
select * from employees order by salary desc limit 5;


-- return the top 3 lowest paid emps
select * from employees order by salary asc limit 3;

-- offset
select * from employees;

select * from employees limit 2 offset 1;

-- return the second  highest salary
select * from employees order by salary desc limit 1 offset 1;


-- return the third highest salary
select * from employees order by salary desc limit 1 offset 2;


-- find the emps whoes name is start with and gender is female
select * from employees where empname like 'A%' AND GENDER = 'Female';



use bank;
select * from orders;
-- List the orders palced after 6 pm?
select * from orders where time(order_datetime) > '10:00:00';

-- count total number of orders by each day
select date(order_datetime) as order_date, count(*) as total_orders from orders
group by order_date;

-- show the orders which placed last 3 day's  from today?
select * from orders where order_datetime >= curdate() - interval 3 day;

-- find the eraliest order_datetime in table
select * from orders order by order_datetime asc limit 1;
select min(order_datetime) from orders;

-- calculate the avg time differnce in hours between order and delivery
select avg(timestampdiff(hour, order_datetime, delivery_datetime)) as avg_diff from orders;


-- find the details where order and  deliver at same day;
select * from orders where date(order_datetime) = date(delivery_datetime) ;
select max(order_datetime) as order1 from orders;
select * from orders order by order_datetime desc limit 1;





## Joins in sql
## Inner Join
## Left  outer Join
## Right outer  Join
## Full outer join
## Self Join

-- table1
-- table2
-- syntax of joins
--- select table1.column, table2.column.....
-- from table1 join table2 on table1.column =table2.column



use company;

select * from employees;  ## table1
select * from departments;  ## table2

--- Return employeeid, emp_name with their deptname

SELECT 
    employees.employeeid,
    employees.firstname,
    departments.departmentname
FROM
    employees
        JOIN
    departments ON employees.departmentid = departments.departmentid;


-- Return all emps details with their dept name
select employees.* , departments.departmentname
from employees join departments on employees.departmentid = departments.departmentid;



SELECT 
    employees.*, departments.*
FROM
    employees
        JOIN
    departments ON employees.departmentid = departments.departmentid;
 


-- Return the employees  with their dept name whoes is working in it and HR dept
SELECT 
    employees.*, departments.departmentname
FROM
    employees
        JOIN
    departments ON employees.departmentid = departments.departmentid
    where departments.departmentname in ('It', 'HR');
    
    
    
-- Return the emps who belogs to delhi, mumbai location

select employees.*,  departments.location from employees join departments
on employees.departmentid = departments.departmentid 
where departments.location in ('Delhi' , 'Mumbai');


-- -- Return the emps who belogs to delhi, mumbai location and working in it dept
SELECT 
    employees.*,
    departments.departmentname,
    departments.location
FROM
    employees
        JOIN
    departments ON employees.departmentid = departments.departmentid
WHERE
    departments.location IN ('Delhi' , 'Mumbai')
        AND departments.departmentname IN ('HR', 'MARKETING');
        
        

-- RETURN THE EMPID, FULLNAME AND WITH DEPT NAME
SELECT EMPLOYEES.EMPLOYEEID, CONCAT(EMPLOYEES.FIRSTNAME, " " , EMPLOYEES.LASTNAME) AS FULLNAME , 
EMPLOYEES.SALARY ,DEPARTMENTS.DEPARTMENTNAME
FROM EMPLOYEES JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENTID = DEPARTMENTS.DEPARTMENTID
ORDER BY EMPLOYEES.SALARY DESC LIMIT 3;


SELECT EMPLOYEES.EMPLOYEEID, CONCAT(EMPLOYEES.FIRSTNAME, " " , EMPLOYEES.LASTNAME) AS FULLNAME , 
EMPLOYEES.SALARY ,DEPARTMENTS.DEPARTMENTNAME
FROM EMPLOYEES JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENTID = DEPARTMENTS.DEPARTMENTID
ORDER BY EMPLOYEES.SALARY ASC LIMIT 3;



SELECT EMPLOYEES.EMPLOYEEID, CONCAT(EMPLOYEES.FIRSTNAME, " " , EMPLOYEES.LASTNAME) AS FULLNAME , 
EMPLOYEES.SALARY ,DEPARTMENTS.DEPARTMENTNAME
FROM EMPLOYEES JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENTID = DEPARTMENTS.DEPARTMENTID
WHERE  CONCAT(EMPLOYEES.FIRSTNAME, " " , EMPLOYEES.LASTNAME) LIKE 'A%' ORDER BY EMPLOYEES.SALARY DESC;


-- RIGHT JOIN
SELECT 
    employees.*, departments.*
FROM
    employees
         RIGHT  JOIN
    departments ON employees.departmentid = departments.departmentid;


-- LEFT JOIN

SELECT 
    employees.*, departments.*
FROM
    employees
       LEFT  JOIN
    departments ON employees.departmentid = departments.departmentid;



-- FULL OUTER JOIN
---  UNION
SELECT employees.*, departments.* FROM employees LEFT  JOIN departments ON employees.departmentid = departments.departmentid
UNION
SELECT employees.*, departments.* FROM employees RIGHT JOIN departments ON employees.departmentid = departments.departmentid;









USE PIZZA_HUT;
SHOW TABLES;

SELECT * FROM ORDERS;
SELECT * FROM PIZZA_TYPES; -- PIZZA_TYPE_ID 
SELECT * FROM PIZZAS ; ---- 
SELECT * FROM ORDER_DETAILS;  ## PIZZA_ID
select count(*) from order_details;

-- RETURN THE CATEGORY WISE TOTAL QUANTITY 
SELECT 
    PIZZA_TYPES.CATEGORY,
    COUNT(ORDER_DETAILS.QUANTITY) AS TOTAL_QUANTITY
FROM
    PIZZA_TYPES
        JOIN
    PIZZAS ON PIZZA_TYPES.PIZZA_TYPE_ID = PIZZAS.PIZZA_TYPE_ID
        JOIN
    ORDER_DETAILS ON ORDER_DETAILS.PIZZA_ID = PIZZAS.PIZZA_ID
GROUP BY PIZZA_TYPES.CATEGORY ORDER BY TOTAL_QUANTITY DESC;






USE BANK;
SHOW TABLES;
SELECT * FROM EMPLOYEES;


## CASE IN SQL

/**CASE 
WHEN COLUMN CONDITION THEN  RESULT
WHEN COLUMN CONDITION THEN RESULT
ELSE DEFAULT RESULT
END**/


USE COMPANY;

SELECT * FROM EMPLOYEES;

SELECT empid, empname,
CASE 
WHEN SALARY > 70000 THEN "A-group"
when Salary > 60000 THEN "B-group"
else "C-group"
End as emp_group
from employees;



select * from emp;
use company;


update emp set bonus =
case
when salary > 80000 then 10000
when salary between 70000 and 80000 then 8000
else 5000
end;

alter table emp add total_salary  int;
update emp set total_salary = salary + bonus;
alter table emp drop total_salary;

select *, salary + bonus as total_salary from emp;


select * from employee;






## Window Function
## Aggregate window Function
## Ranking Window Function
## Values Window Function



use bank;
select * from employees;


## over()
## partition by

##select *,sum(salary) as total_salary from employees group by *;
select sum(salary) as total_salary from employees;
select *, sum(salary) over() as total_salary from employees;
select empname, department, sum(salary) as total_salary from employees group by department, empname;
select *, sum(salary) over(partition by department ) as total_salary from employees;


select *, max(salary) over(partition by department) as highest_salary from employees;


select  empid, empname, salary, department, avg(salary) 
over(partition  by department )   as avg_salary from employees order by avg_salary desc; 




select *, sum(salary) over(partition by department) as total_salary , 
avg(salary) over(partition by department) as avg_salary from employees;

--
-- Ranking Window Function
-- Rank()

select * from employees;

select *, Rank() over(order  by salary desc) as salary__rank from employees;
select *, dense_Rank() over(order  by salary desc) as salary__rank from employees;


select *, Rank() over(order  by salary desc) as salary__rank, 
dense_Rank() over(order  by salary desc) as salary__denserank  from employees;


select *, rank() over(partition by department order by salary desc)  
as salary_rank from employees;


-- row_number()
select * , row_number() over(order by salary desc) as row_num from employees;


-- ntile()
select *,ntile(2) over(order by salary desc) as emp_group from employees;


select * from employees;







# Subquery in sql
-- Types of subquery
-- Single row subquery-(scalar subqery)
-- Multirow Subqery
-- Correlated Subqery


-- Syntax of Subqery
-- select column1, column2 from table where column condition (select column from table );
select * from employees;

-- Scalar Subqery
-- find the employees whoes salary is euqal to highest; 
select * from employees where salary  =(select max(salary) from employees);

--  find the employees whoes salary is more than avg salary
select * from employees where salary > (
select avg(salary) from employees);


select * from emp;
select * from emp where salary = (
select max(salary) from emp);

-- find the employees whoes salary is equal to lowest salary
select * from emp where salary = 
(select min(salary) from emp);


use company;
select * from employees;
select * from departments;
select * from emp;

-- assign the rank  to the each dept by their total salary
select department, sum(salary) as total_salary, 
dense_rank() over(order by sum(salary) desc) as dept_rank 
from emp group by department;


select department, sum(salary) as total_salary 
from emp group by department;


select department, count(*) as total_emps , dense_rank() over(order by count(*) desc) as dept_rank
from emp group by department;



-- return empid, name salary and dept name and assign the rank to emps on basis of their salary
select employees.employeeid, employees.firstname, employees.salary, departments.departmentname
, dense_rank() over(order by employees.salary desc) as emps_rank from employees
join departments on employees.departmentid = departments.departmentid;


select departments.departmentname, sum(employees.salary) as total_salary, dense_rank()
over(order by sum(employees.salary) desc) as dept_rank from employees join departments
on employees.departmentid = departments.departmentid
group by departments.departmentname;


## 
-- 3 : values function
-- lag()
-- lead()
-- first_value()
-- last_value()

select * from employees;
select *, lag(salary) over(order by salary desc) as lastsalary_value from employees;
select *, lead(salary) over(order by salary desc) as lastsalary_value from employees;

-- first_value()
select *, first_value(salary) over() as first_salary  from  employees;
select *, last_value(salary) over() as last_salary from employees;
select *, salary - lead(salary) over(order by salary desc)  as diff_salary  from employees;
select *, salary - lag(salary) over(order by salary desc)  as diff_salary  from employees;



-- View Table
-- A View table is a like virtual table in sql
-- where we canstore  some filters records.
-- it does not store data physically.

-- types of view
-- simple view - saved sql query that behaves like a table
-- complex view -  used join , group by etc;
use company;
select * from emp;

-- create view view_name as
-- select column1, coolumn2, column3
-- from table where condition ;
use company;

select * from emp;

CREATE VIEW IT as
select * from emp where department = 'It';

show tables;
select * from it; ##  virtual table
--  view with update
update it set salary = 80000 where employeeid = 2;
delete from it where employeeid = 10;

use bank;
select * from it;
insert into it values(10, 'Mohan','IT',  78000, 7000);

select * from emp;


-- drop view view_name
drop view it;
select * from it;
create  view emp1 as
select employeeid, name, department from emp;

select * from emp1;
drop view emp1;

-- Complex View

Create View dept_salary as
select department, sum(salary) as total_salary from emp group by department;

select * from dept_salary;

show tables;
































































































