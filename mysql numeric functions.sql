ROUND function
===================
ROUND( number, [ decimal_places ] )

select round(3421.7789);
select round(3421.7789,2);
select round(3421.7789,1);
select round(prod_price) from products;
SELECT ROUND(125.315, -1);
SELECT ROUND(125.315, -2);

FLOOR function
==========================
FLOOR( number )

select floor(321.45);
SELECT floor(-32.65);

CEIL function
===========================
CEIL( number )

select ceil(321.45);
select ceil(-32.65);

COUNT function:
=================================
SELECT COUNT(expression)
FROM tables
[WHERE conditions];

select count(first_name) from Persons;

MAX function
==================================
select designation,AVG(salary) from persons group by designation;

MIN function
================================
select MIN(salary) from persons;

AVG function
================================
select AVG(salary) from persons;

LEAST function:
====================================
LEAST( expr1, expr2, ... expr_n )

select least(25, 21, 17, 33);
select least('abcde', 'abc');

select least(first_name,last_name) from persons;

GREATEST function:
====================================
greatest( expr1, expr2, ... expr_n )

select greatest(25, 21, 17, 33);
select greatest('abcde', 'abc');

select greatest(first_name,last_name) from persons;

MOD function
===================================
MOD( n, m )

select mod(10,3);
select mod(10,2);
select mod(-10,3);

select mod(prod_price, 1000) from products;

