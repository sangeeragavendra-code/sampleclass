create database tabdet01
use tabdet01

create table salary(sid int primary key,srange int)
insert into salary values(1,30000),(2,40000),(3,50000)
select * from salary

create table dept(did int primary key auto_increment,depname varchar(20))
insert into dept(depname)values("it"),("hr"),("testing")
select * from dept

create table employee(empid int primary key auto_increment,empname varchar(30),sid int,did int,foreign key (sid) references salary(sid),
foreign key (did) references dept(did))auto_increment=101
insert into employee(empname,sid,did) values("akash",2,3),("hari",1,2)
select * from employee

create table empdetails(sno int primary key auto_increment,regid int,empname varchar(30),dob date,city varchar(30),foreign key(regid)references employee(empid))
insert into empdetails(regid,empname,dob,city) values(101,"maha","2025-05-01","salem"),(102,"kowsi","2025-07-02","chennai")
select* from empdetails