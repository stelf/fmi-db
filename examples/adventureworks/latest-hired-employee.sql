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
	e.HireDate >= ALL (SELECT HireDate from HumanResources.Employee)
