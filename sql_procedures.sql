use company;

select * from customer;

# I. Normal Procedure
## Create procedure all_cust()
delimiter &&
create procedure all_cust()
begin
select fname, lname from company.customer where age > 30;
end 
&& delimiter ;

##call procedure all_cust()
call all_cust()

## create procedure my_cust()
delimiter &&
create procedure my_cust()
begin
select * from customer;
end
&& delimiter ;

## call procedure my_cust()
call my_cust();

#####################################

# II. IN Procedures (Which takes input argument)

## Eg 1. procedure which gives n number of senior customer details where n is argument
select * from company.customer order by age desc limit 5;

delimiter &&
create procedure senior_ppl(in var int)
begin
select * from company.customer order by age desc limit var;
end
&& delimiter ;

## Call procedure
call senior_ppl(5);


# Eg. 2 Change age of the customer using procedure

## query checking
update customer set age = 61 where cust_id =  1009;

## create procedure age_update
delimiter &&
create procedure age_update(in id_var int, in age_var int)
begin
update customer set age = age_var where cust_id =  id_var;
end
&& delimiter ;

## call procedure age_update
call age_update(1008, 55);

call senior_ppl(5);

########################################################

# III. OUT Procedure (which return output in argument)

## Query Test
select count(*) from customer where city = 'Mumbai';

## create procudure cust_mumbai()
delimiter &&
create procedure cust_mumbai(OUT mum_count int)
begin
select count(*) from customer where city = 'Mumbai' into mum_count;
end
&& delimiter ;

## call procedure cust_mumbai()
call cust_mumbai(@mum_count);

select @mum_count; 

############################################################

# IV. Use IN and OUT together

## create procedure city_count()
delimiter &&
create procedure city_count(IN city_name varchar(20), OUT city_count INT)
begin
select count(*) from company.customer where city = city_name into city_count;
end
&& delimiter ;

## call procedure city_count()

call city_count('New Delhi',@city_count);
select @city_count;