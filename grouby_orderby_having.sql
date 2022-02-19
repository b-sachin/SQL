# Create database
create database college;

# create table
create table college.student(
	stud_id int not null,
    stud_name varchar(20),
    stud_address varchar(255),
    churn int
    );

# Add Column
alter table college.student add(
	stud_gender varchar(1)
);

alter table college.stud_details add column churn int after stud_gender;

# Rename column name
alter table college.student rename column stud_id to stud_roll; 

# Rename table 
alter table college.student rename to college.stud_details;

# drop column
alter table college.stud_details drop column churn;

# drop table
drop table college.stud_details;

# crate new table
create table college.student(
	sid int not null,
    name varchar(20),
    address varchar(255),
    gender varchar(1),
    churn int,
    primary key(sid)
    );
    
   
create table department(
	dept_id int,
    dept_name varchar(20),
    dept_address varchar(255)
);

create table employee(
	emp_id int,
    emp_name varchar(20),
    emp_add varchar(100)
);

# group by
select gender, count(gender) from college.student group by gender;

# order by
select gender, count(gender) from college.student group by gender order by gender;

select gender, count(gender) from college.student group by gender order by gender desc;

select address, gender, count(gender) from college.student group by address order by gender;

select address, gender, count(gender) from college.student group by address, gender order by address;

select address, gender, count(gender) from college.student group by address, gender order by address asc;

select address, gender, count(gender) from college.student group by address, gender order by address desc;

# limiting no. of rows
select address, gender, count(gender) from college.student group by address, gender order by address desc limit 2;

# having clause
# filtering on top of grouped items 
# The ' having' clause is typically used when you have to apply a filter condition on an 'aggregated value'.

# count all the employees whose salaries are more than the average salary of that perticular department


select address, gender, count(gender) from college.student group by gender, address having count(gender) > 1;


## Order of query keyword
select 
from
where
group by
having
order by
limit

