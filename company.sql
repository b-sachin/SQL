# create databse
create database company;

# activate database for use
use company;

# create department table
create table department(
	dept_id int not null primary key,
    dept_name varchar(20),
    dept_address varchar(255)
);

# insertinto department table
insert into department values (101, 'Sales', '1st Floor');
insert into department values (102, 'Production', '2st Floor');
insert into department values (103, 'Marketing', '3st Floor');
insert into department values (104, 'HR', '4st Floor');

# create table employee
create table employee(
	emp_id int primary key,
    emp_name varchar(20),
    emp_add varchar(100),
    dept_id int,    
    foreign key (dept_id) references department(dept_id)
);

# insert into employee
insert into employee value (1, 'Sachin', 'Mumbai', 101);
insert into employee value (2, 'Nitin', 'Mumbai', 102);
insert into employee value (3, 'Komal', 'Mumbai', 103);
insert into employee value (4, 'Vinaya', 'Banglore', 101);
insert into employee value (5, 'Nikita', 'Delhi', 102);
insert into employee value (6, 'Hitesh', 'Delhi', 103);
insert into employee value (7, 'Rahul', 'Pune', 104);
insert into employee value (8, 'Aniket', 'Pune', 101);
insert into employee value (9, 'Anant', 'Pune', 102);
insert into employee value (10, 'Avinash', 'Mumbai', 103);
insert into employee value (11, 'Nitesh', 'Pune', 104);
insert into employee value (12, 'Ramesh', 'Pune', 104);

# Select Statement
select * from employee;

# where clause /  filter
select * from employee where emp_add = 'Mumbai';
select * from employee where emp_id > 4;

# multiple filter
select * from employee where emp_add = 'Pune' and dept_id < 103;

# like (PAttern Matching)

# Any Employee whose Name start with N
select * from employee where emp_name like 'N%';

# All cust who has 't' in their name
select * from employee where emp_name like '%t%';

# All the cust whose name end with 'a'
select * from employee where emp_name like '%a';

# Write a command to fetch all the employee whose name starts with N & end with n
select * from employee where emp_name like 'N%n';

# write a command to fetch all the employee who stays in Mumbai & belong to Sales dept
Select * from department;
select * from employee;

select * from employee where emp_add = 'Mumbai' and dept_id = 101;

create table customer (cust_id int, fname varchar(20), lname varchar(20), age int, city varchar(20), state varchar(20), primary key (cust_id));
insert into customer values (1001, 'John', 'Jones', 45, 'Mumbai', 'Maharashtra');
insert into customer values (1002, 'Mary', 'Jones', 25, 'Pune', 'Maharashtra');
insert into customer values (1003, 'Eric', 'Edwards', 32, 'Mumbai', 'Maharashtra');
insert into customer values (1004, 'Mary Ann', 'Edwards', 32, 'New Delhi', 'Delhi');
insert into customer values (1005, 'Ginger', 'Howell', 42, 'Banglore', 'Karnataka');
insert into customer values (1006, 'Sebastian', 'Smith', 23, 'Noida', 'UP');
insert into customer values (1007, 'Gus', 'Gray', 35, 'Mumbai', 'Maharashtra');
insert into customer values (1008, 'Mary Ann', 'May', 52, 'Banglore', 'Karnataka');
insert into customer values (1009, 'Erica', 'Williams', 60, 'New Delhi', 'Delhi');
insert into customer values (1010, 'Leroy', 'Brown', 22, 'Noida', 'UP');
insert into customer values (1011, 'Elroy', 'Cleaver', 22, 'Mumbai', 'Maharashtra');

select * from customer;

# how to get only fname, lname and city
select fname, lname, city from customer;

# get fname and lname for customer whose age is greater than 50
select fname, lname, age from customer where age >= 50;

# select customer whose name start with 'J'
select * from customer where fname like 'J%';

# to get count of all records
select count(*) from customer;

# to get count of record based on condition
select count(*) from customer where Age > 30;

# to rename resulting column
select count(*) as COUNT_RECORDS from customer where Age > 30;

# Alias
select fname as FN, lname as LN from customer as c where c.Age > 30;

Select * from company.customer;