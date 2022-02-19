# datetime

show tables;

create table transaction_details(
	prod_id int,
    prod_name varchar(50),
    order_date datetime,
    amount numeric
);

insert into transaction_details values(1001, 'Notebook', '2022-01-01', 10000);

insert into transaction_details values(1002, 'Notebook', '2022-10-01', 15000);
insert into transaction_details values(1003, 'Pen', '2022-02-01', 10565);
insert into transaction_details values(1004, 'Pencil', '2022-03-01', 1030);
insert into transaction_details values(1005, 'Ruler', '2022-04-01', 13232);
insert into transaction_details values(1006, 'Eraser', '2022-05-01', 1006);
insert into transaction_details values(1007, 'Backpack', '2022-06-01', 10000);
insert into transaction_details values(1008, 'Laptop', '2022-01-07', 100656);
insert into transaction_details values(1009, 'Tiffinbox', '2022-08-01', 10023);
insert into transaction_details values(1010, 'waterbottle', '2022-09-01', 50000);

# Date diff : Return diff between two dates
select datediff(sysdate(), order_date) as datediff_today, prod_id, prod_name, order_date from transaction_details;

# date format
select date_format(order_date, '%Y') from transaction_details;

select date_format(order_date, '%M') from transaction_details;
select date_format(order_date, '%m') from transaction_details;

# day
select day(order_date) from transaction_details;

# quarter
select quarter(order_date) from transaction_details;

# day
select day(order_date) from transaction_details;

#adddate
select adddate(order_date, interval -4 day) from transaction_details;
