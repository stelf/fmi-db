/*
    department with most recent hires

    1. find out the date of most recent hire
    2. join this with employee to get only these 
        employess with such date
    3. join departments to get department name
    4. take only distinct department names, as there may be
        duplicates 

*/     

select  
	distinct deptname 
from 
	employee e  
inner join 
	( select max(hiredate) as mhd from employee ) as i  on  (i.mhd = e.hiredate) 
inner join  
	department d  on (e.workdept = d.deptno) 


