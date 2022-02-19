# list all fname without last char
select substr(fname,1,character_length(fname)-1) from customer;

# list inititals of fname where city is Mumbai
select fname, left(fname,1), city from customer where city = 'Mumbai';

# display last two character of fname
select fname,right(fname,2) from customer;

# show full name in upper case
select upper(concat(fname,' ',lname)) from customer;

# select names whose having 'e' in it
select * from customer where lname regexp '[l]';

