/* Task: Find the most recently hired employees */


/* variant 1 */

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
	e.HireDate >= ALL (
		SELECT
			HireDate 
		FROM 
			HumanResources.Employee)

/* variant 2 */

SELECT 
	Person.FirstName, 
	Person.LastName
FROM
	PERSON.Person 
WHERE 
	BusinessEntityID in (
	SELECT
		BusinessEntityId 
	FROM
		HumanResources.Employee
	WHERE
		HireDate = (
			SELECT MAX(HireDate) 
			From HumanResources.Employee
		)
	)
