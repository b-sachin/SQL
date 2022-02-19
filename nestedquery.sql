# find the list of product which are having amount greater than avg product amount in transaction_details table

# 1. avg product amount in transaction_details
select avg(amount) from transaction_details;

# 2. list of product which are having amount greater than avg product amount in transaction_details
select * from transaction_details where amount > 21046.5455;

# Final. 1 & 2 combine in the form of nested query
select * from transaction_details where amount > ( select avg(amount) from transaction_details);

##################################################################################################

use classicmodels;

select * from products limit 5;
select * from orderdetails limit 5;

# Q. We want the product code, name & mrp of products whose price of each product is less than 200$
select productCode, productName, MSRP from products where productCode in (select productCode from orderdetails where priceEach < 200 );

select distinct p.productCode, p.productName, p.MSRP 
from products p
join orderdetails o
on p.productCode = o.productCode
where o.priceEach < 200;