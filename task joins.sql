drop table employees003

create table employees003(
EmpID int primary key,
EmpName varchar (50),
DeptID int
);
create table department003(
deptName varchar (50),
DeptID int
 );
insert into employees003( EmpID,EmpName,DeptID )
values (1505,'kaviya',05),(2506,'lincy',11),(3601,'janani',21),(5601,'akula',56),(2199,'janavi',66);

insert into employees003( EmpID,EmpName,DeptID )
values (111,'Sam',57),(222,'Peter',57);

insert into department003( deptname,DeptID )
values ('dev',005),('test',11),('engineer',22),('HR',57),('core',66);

select * from employees003;

select * from department003;


select E1.EmpID,  E1.Empname, E1.DeptID,E2.DeptID, E2.deptname
from employees003 E1 inner join Department003 E2
on E1.DeptID = E2.DeptID;

select E1.EmpID,  E1.Empname, E1.DeptID,E2.deptid, E2.deptname
from employees003 E1 right join Department003 E2
on E1.DeptID = E2.DeptID;

select E1.EmpID,  E1.Empname, E1.DeptID,E2.deptid, E2.deptname
from employees003 E1 left join Department003 E2
on E1.DeptID = E2.DeptID;

SELECT e1.EmpName AS Employees1, e2.EmpName AS employee2, e1.DeptID
FROM employees003 e1
JOIN employees003 e2 ON e1.DeptID = e2.DeptID AND e1.EmpID < e2.EmpID;

select E1.Empname, E2.deptname
from employees003 E1 inner join Department003 E2
on E1.DeptID = E2.DeptID
where E2.deptname = 'HR'







