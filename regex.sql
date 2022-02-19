# pattern that start with 'A'
SELECT * FROM transaction_details WHERE prod_name LIKE 'P%';
SELECT * FROM transaction_details WHERE prod_name REGEXP '^P';

SELECT * FROM transaction_details WHERE prod_name REGEXP '^P';

# pattern that contain either of given character [bcd]
SELECT * FROM transaction_details WHERE prod_name REGEXP '[bcd]';

# pattern that contain character from [b-d]
SELECT * FROM transaction_details where prod_name REGEXP '[b-d]'