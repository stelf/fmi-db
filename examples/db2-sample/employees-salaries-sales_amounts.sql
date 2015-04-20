/*
    sales amounts by employees and employee details 
    including employees that have never sold anything
  
*/

select 
	firstnme, 
	lastname, 
	salary, 
	s.sale_amount 
from 
	employee e 
left outer join (
	select 
		sales_person, 
		sum(sales) as sale_amount 
	from 
		sales 
	group by sales_person) s 
on 
	e.lastname = s.sales_person
