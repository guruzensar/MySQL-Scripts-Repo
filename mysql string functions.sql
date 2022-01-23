select * from persons;
select * from products;

LENGTH function:
=========================
select length('hello..how are you?') as result;
select prod_name,length(PROD_NAME) from products;

LEFT function:
========================
select LEFT('hello how are you', 5) as result;
select first_name,designation, left(DESIGNATION,4) from persons;

RIGHT function:
========================
select RIGHT('hello how are you', 5);
select first_name,designation, RIGHT(DESIGNATION,4) from persons;

LTRIM and RTRIM and TRIM functions:
======================================================
select TRIM('                     hello how are you?                ')
select LTRIM('                     hello how are you?                ');
select RTRIM('                     hello how are you?                ');



LPAD function:
============================================
select LPAD('hello',15, 'X');
select LPAD('hello',50, ' ');
select First_name, last_Name from persons;
select LPAD(First_name, 20, ' '), LPAD(last_Name,20,' ') from persons;

RPAD function:
============================================
select RPAD('hello',15, 'X');
select RPAD('hello',15, ' ');
select rpad(First_name,50,' '), last_Name from persons;

SUBSTR function
==========================================
select substr('Zensar Java Training', 5);
select substr('WelcometoTraining', 5, 3);
select substr('Zensar Java Training', 1, 5);
select substr('Zensar Java Training', -3, 5);
select PROD_NAME,prod_price from products;
select substr(PROD_NAME,1,5) ,prod_price from products;


SUBSTRING function
====================================
select substring('Zensar Java Training', 5);
select substring('Zensar Java Training', 5,4);
select substring('Zensar Java Training', 1, 5);
select substring('Zensar Java Training', -3, 5);
select substring(PROD_NAME,5,10) ,prod_price from products;

CONCAT function:
=======================================
select concat("hello", "zensar", "training")
select concat(first_name,' ',last_name) as name from PERSONS;

FORMAT function
=======================================
FORMAT( number, decimal_places )

select format(13456.7895, 2);
select format(13456.7895, 1);
select format(13456.7895, 0);

select format(prod_price,0) from products;

UCASE, LCASE functions:
========================================
UCASE( string )

select UCASE('hello');
select ucase(prod_name) from products;

select LCASE('Hello');
select lcase(first_name) from persons;

REVERSE function
=====================================
REVERSE( string )

select reverse('hello');


POSITION function:
=====================================
POSITION( substring IN string )
select position('how' IN 'hello how are you')




