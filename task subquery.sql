

create table departments(
dept_ID int primary key,
deptName varchar(50) unique not null

);

create table employees003 (
emp_ID INT primary key,
name varchar(50) not null,
department_ID INT,
salary decimal(10,2) check (salary > 60000),
city varchar(50),
foreign key (department_ID) references departments(deptID)
);

select * from departments;

select * from employees003;

insert into departments( deptID, deptName)
values( 3108, 'mechanical'),(3109,'IT'),(3111,'CSE'),(3155, 'ECE');

insert into employees003(emp_ID,name,department_ID,salary,city)
values (100, 'kaviya','3108', 70000,'india'),(101, 'suba','3109', 80000,'USA'),(102,'lincy','3111', 61000,'USA'),(103,'janani','3155', 90000,'india');

select 
    d.deptName, 
    count(e.emp_ID) AS num_employees003,
    avg(e.salary) AS avg_salary
 from
	departments d
 join
     employees003 e ON d.deptID =e.department_ID
where
	d.deptName like '%IT%'
    and e.city like '%USA%'
    and e.salary >(select avg (salary) from employees003)
 group by
    d.deptName
 having
   AVG(e.salary)> 70000
   AND count(e.emp_ID)>2
 order by
   avg_salary DESC;
   
   select * from employees003;