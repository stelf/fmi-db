/* 
    deparments with most recent hires (approach 2)

    1. find all departments
    2. join all employees
    3. from the resulting set leave only records
        that have hiredate matching the most recent hiredate

*/


select 
	distinct deptname 
from 
	employee e 
inner join 
	department d 
on (e.workdept = d.deptno) 
where 
	hiredate = ( select max(hiredate) from employee )
