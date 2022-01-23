select * from employees;
select max(emp_basic_salary) from employees;

select * from employees where EMP_BASIC_SALARY=(select max(EMP_BASIC_SALARY) from employees);

select * from employees where EMP_BASIC_SALARY=(select min(EMP_BASIC_SALARY) from employees);

select * from employees where EMP_BASIC_SALARY>(select avg(EMP_BASIC_SALARY) from employees);

select * from employees where EMP_BASIC_SALARY<(select avg(EMP_BASIC_SALARY) from employees);

select * from employees where EMP_GRADE in (select grade_name from grades);

select * from grades where grade_name  IN (select distinct emp_grade from employees);

select * from customers where citycode=(select cityid from cities where cityname='Bangalore');
select * from customers where citycode<(select cityid from cities where cityname='Bangalore');
select * from customers where citycode>(select cityid from cities where cityname='Bangalore');

select * from customers where citycode IN (select cityid from cities where cityname='Bangalore' or cityname='Chennai');
select * from customers where citycode NOT IN (select cityid from cities where cityname='Bangalore' or cityname='Chennai');

select name from customers c where exists(select * from c_orders where custid=c.id);

select amt from dummy;
select * from customers where amount >  ANY( select amt from dummy);
select * from customers where amount >  ANY( select amt from dummy);

select * from customers where amount =  any( select amt from dummy);
select * from customers where amount >  ALL( select amt from dummy);

select * from dummy;
commit;


use zensartraining_db;
create table customer_ratings(
	id	int auto_increment,
    name varchar(50),
    rating int,
    balance double,
    city varchar(25),
    primary key(id)
);

insert into customer_ratings(
	name,rating,balance,city
) values(
	'A to Z &Co',5,1000.00,'Mumbai'
);

insert into customer_ratings(
	name,rating,balance,city
) values(
	'John Trading corp',4,2000.00,'Delhi'
);

insert into customer_ratings(
	name,rating,balance,city
) values(
	'Med Lab',6,2000.00,'Kolkata'
);

insert into customer_ratings(
	name,rating,balance,city
) values(
	'Best Corporation',2,5000.00,'Pune'
);

insert into customer_ratings(
	name,rating,balance,city
) values(
	'Heath & Glow',3,4000.00,'Indore'
);


insert into customer_ratings(
	name,rating,balance,city
) values(
	'Apollo Pharmacy',8,4000.00,'Hyderabad'
);

insert into customer_ratings(
	name,rating,balance,city
) values(
	'Rashmi Medical Equipments',1,5000.00,'Patna'
);

insert into customer_ratings(
	name,rating,balance,city
) values(
	'Health Care',10,3000.00,'Chennai'
);

insert into customer_ratings(
	name,rating,balance,city
) values(
	'Future Enterprises',8,3000.00,'Chennai'
);

insert into customer_ratings(
	name,rating,balance,city
) values(
	'SpecMakers Ltd',6,8000.00,'Bangalore'
);
select * from customer_ratings;

create table dummy2(
	id int auto_increment,
    data int,
    primary key(id)
);

insert into dummy2(data) values(2);
insert into dummy2(data) values(6);
insert into dummy2(data) values(8);

select * from dummy2;

select name,rating,city from customer_ratings 
	where rating >some(
		select data from dummy2
	);
    
create table dummy3(
	id int auto_increment,
    cityName	varchar(25),
    data        int,
    primary key(id)
);  
insert into dummy3(cityName,data) values('Chennai',2);
insert into dummy3(cityName,data) values('Mumbai',6);
insert into dummy3(cityName,data) values('Pune',8);
insert into dummy3(cityName,data) values('Chennai',8);
insert into dummy3(cityName,data) values('Mumbai',5);
insert into dummy3(cityName,data) values('Pune',2);


select * from customer_ratings;
select cityName,data from dummy3;

select * from customer_ratings
	where (city,rating) IN 
    (select cityName,data from dummy3);

  



