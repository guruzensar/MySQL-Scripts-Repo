create table courses(
	id	int auto_increment,
    name	varchar(50),
    fees	double,
    constraint course_id_pk	primary key(id)
);

create table students(
	id int auto_increment,
    name varchar(25),
    mark int,
    constraint students_id_pk primary key(id)
);

ALTER TABLE table_name  
CHANGE COLUMN old_name new_name   
column_definition  
[ FIRST | AFTER column_name ] 

alter table STUDENTS
change column mark mark1 int;

select * from students;

ALTER TABLE table_name  
ADD new_column_name column_definition  
[ FIRST | AFTER column_name ]; 

alter table students
add mark2 int;
select * from students;



ALTER TABLE table_name  
 ADD new_column_name column_definition  
 [ FIRST | AFTER column_name ],  
ADD new_column_name column_definition  
[ FIRST | AFTER column_name ],  
  ...  
;  

alter table students
add mark3 int,
add mark4 int;

select * from students;

alter table students
add total int,
add average double;
select * from students;

ALTER TABLE table_name  
MODIFY column_name column_definition  
[ FIRST | AFTER column_name ]; 

alter table students
modify average int; 
select * from students;


ALTER TABLE table_name  
DROP COLUMN column_name;

alter table students
drop column total,
drop column average;
select * from students;


ALTER TABLE table_name  
RENAME TO new_table_name;

alter table students 
rename to studs;

select * from studs;
desc studs;