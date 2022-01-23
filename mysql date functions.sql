CURDATE function:
===========================
CURDATE( )
select curdate();

ADDDATE function:
=============================================
ADDDATE( date, INTERVAL value unit )
OR
ADDDATE( date, days )

select adddate(curdate(), 10);
select adddate('2021-10-10 8:40:25:000001', 10);
select adddate('2021-10-10 8:40:25:000001', interval 20 day );
select adddate('2021-10-10 8:40:25:000001', interval 20 hour );
select adddate('2021-10-10 8:40:25:000001', interval 12 week );
select adddate('2021-10-10 8:40:25:000001', interval 1 quarter );

DATE function:
===================================
DATE( expression )

select date('2021-10-14');
select date('abcde');
select date('2021-10-14 08:05:30');

DATE_FORMAT function:
====================================

DATE_FORMAT( date, format_mask )


select date_format(curdate(), '%d/%m/%Y');
select emp_dob from employees;
select date_format(emp_dob, '%Y') from employees;
select date_format(emp_dob, '%m-%d-%Y') from employees;
select date_format(emp_dob, '%M %D, %Y') from employees;
select date_format(emp_dob, '%a, %M %e, %Y') from employees;

https://www.techonthenet.com/mysql/functions/date_format.php

DATEDIFF function
==========================================
DATEDIFF( date1, date2 )

select DATEDIFF('2016-10-10', '2015-05-29');
select DATEDIFF('2014-10-10', '2015-05-29');
select datediff(emp_doj, emp_dob) from employees;

TIME_FORMAT function:
================================================
TIME_FORMAT( '08:40:20', format_mask )

https://www.techonthenet.com/mysql/functions/time_format.php

select TIME_FORMAT('10:00:24', '%T');
select TIME_FORMAT('18:00:24', '%T');
select TIME_FORMAT('18:00:24', '%r');
SELECT TIME_FORMAT('15:02:28', '%h:%i:%s %p');

MONTH function:
=====================================
MONTH( date_value )

select month(curdate());
select month(emp_doj) from employees;
select month('1990-08-15');

MONTHNAME function:
=====================================
MONTHNAME( date_value )

select monthname('2021-05-12');
select monthname(emp_doj) from employees;

NOW function:
=====================================
NOW( )

select now();

DAYNAME function:
=====================================
DAYNAME( date_value )

select dayname(curdate());
select dayname(emp_dob) from employees;

DAYOFMONTH function:
======================================
DAYOFMONTH( date_value )

select dayofmonth(curdate());
select dayofmonth(emp_doj) from employees;
SELECT dayofmonth('2013-10-15');
SELECT dayofmonth('2014-01-28 15:21:05');

DAYOFWEEK function:
========================================
DAYOFWEEK( date_value )

select dayofweek(curdate());
select dayofweek(emp_doj) from employees;
SELECT dayofweek('2013-10-15');
SELECT dayofweek('2014-01-28 15:21:05');

DAYOFYEAR function:
=======================================
 
select dayofyear(curdate());
select dayofyear(emp_doj) from employees;
SELECT dayofyear('2013-10-15');
SELECT dayofyear('2014-03-28 15:21:05');

EXTRACT function:
===========================
EXTRACT( unit FROM date )

select extract(DAY from curdate());
select extract(hour from '2020-10-08 10:44:55');
select extract(minute from '2020-10-08 10:44:55');
select extract(second from '2020-10-08 10:44:55');
select extract(quarter from '2020-10-08 10:44:55');
select extract(year from '2020-10-08 10:44:55');
select extract(hour from '2020-10-08 10:44:55');

HOUR function
=========================
HOUR( date_value )

select hour(curdate());
select hour('2020-10-08 10:44:55');

MINUTE function
===========================

MINUTE( date_value )

select minute(curdate());
select minute('2020-10-08 10:44:55');

SECOND function
===========================

SECOND( date_value )

select second(curdate());
select second('2020-10-08 10:44:55');
