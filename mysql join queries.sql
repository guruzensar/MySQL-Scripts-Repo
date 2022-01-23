select * from grades,employees;
select g.grade_name, g.pf_percentage, g.allow_percentage,e.emp_name, e.emp_gender from grades g, employees e;

MySQL supports the following types of joins:

Inner join
Left join
Right join
Cross join

select * from employees;

select 
	g.grade_name, g.pf_percentage, g.allow_percentage,
    e.emp_name, e.emp_gender from grades g 
    INNER JOIN employees e
    ON g.grade_name=emp_grade;
    
select 
	g.grade_name, g.pf_percentage, g.allow_percentage,
    e.emp_name, e.emp_gender from grades g 
    LEFT OUTER JOIN employees e
    ON g.grade_name=emp_grade;
    
select 
	g.grade_name, g.pf_percentage, g.allow_percentage,
    e.emp_name, e.emp_gender from grades g 
    RIGHT OUTER JOIN employees e
    ON g.grade_name=emp_grade;
    
select 
	g.grade_name, g.pf_percentage, g.allow_percentage,
    e.emp_name, e.emp_gender from grades g 
    CROSS JOIN employees e;
    
select 
	g.grade_name, g.pf_percentage, g.allow_percentage,
    e.emp_name, e.emp_gender from grades g 
    CROSS JOIN employees e
    WHERE e.emp_grade=g.grade_name;

select * from grades,employees, emp_contacts where grades.GRADE_NAME=employees.EMP_GRADE and employees.EMP_ID=emp_contacts.EMP_ID;
    