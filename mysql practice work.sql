create database regsystem;
use regsystem;

create table registrationDetails (
  name varchar(30) not null,
  age int check (age > 13),
  password varchar(50) unique,
  email varchar(30) unique,
  country varchar(10) default 'USA'
);


select * from registrationDetails;

insert registrationDetails (empID, name, age, password,email,country)
values (3108, 'kaviya', 21, 'kavi123','arivarasankaviya@gmail.com','USA'),(3106, 'akula maha', 21, 'maha185','akulamaha144@gmail.com','USA');


insert into registrationDetails (empID, name, age, password, email, country)
values(3109, 'janani', 23, 'janani56?', 'jananipalani134!@gmail.com', 'USA');

delete from registrationDetails where empID = 3188;
