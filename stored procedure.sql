use practice;

select * from customers

delimiter $$
create procedure salaryUpdate( IN empId int, IN newSalary Decimal(10,2), OUT message varchar(50))
begin

declare oldSalary decimal(10,2);
select salary into oldSalary from customers where id = empId;

if newSalary > oldSalary then
    update customers set salary = newSalary where id = empId;
    set message = 'salary updated successfuly';
    else
    set message = 'Old Salary is hiegher than new salary';
    end if;
end $$
delimiter ;

set @msg = '';
call SalaryUpdate(1,30000,@msg);
select @msg;

