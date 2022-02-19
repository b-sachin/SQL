# concat

# Without Space in between
select concat(fname,lname) as full_name from company.customer;

# With Space in between
select concat(fname,' ',lname) as full_name from company.customer;

# Substring and MID (Both are same)
select substr(state,1,3) from company.customer;
select MID(state,1,3) from company.customer;

# Upper and Lower

select upper(city) from customer;
select lower(city) from customer;

# character length
select state, character_length(state) from customer;


