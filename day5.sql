create database ganesh_emp;
use ganesh_emp
create table emp_data(empid int primary key,initials varchar(2),dept varchar(20),leaves_available numeric(3));
insert into emp_data values(1000,"KK","CTO_OFFICE",12);
insert into emp_data values(2001,"MA","HEXAVARSIT",8);
insert into emp_data values(1001,"IK","CTO_OFFICE",9);
insert into emp_data values(2002,"UM","HEXAVARSIT",7);
insert into emp_data values(1002,"SK","CTO_OFFICE",13);
insert into emp_data values(2003,"VR","HEXAVARSIT",6);
insert into emp_data values(2004,"JK","HEXAVARSIT",6);

select empid,initials from emp_data where leaves_available=(select max(leaves_available) from emp_data);
select dept,sum(leaves_available) from emp_data group by DEPT;
