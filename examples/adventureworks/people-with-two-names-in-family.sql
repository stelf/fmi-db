SELECT
  	p.FirstName,
	p.LastName,
	HireDate
from 
	HumanResources.Employee e
inner join
	Person.Person p on
	e.BusinessEntityID = p.BusinessEntityID
WHERE
	p.LastName like '%-%' or
	p.LastName like '% %'
