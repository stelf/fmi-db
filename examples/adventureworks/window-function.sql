
/* for each employee query :
 a) the employee basic details (name, birthdate, org. level)
 b) someone who is just older and just younger, but on the same organizational level, 
 c) and the minimum and maximum ages of people on the same organizational level 
 
 */
select 
	Person.FirstName + ' '  +  Person.LastName,
	Employee.BirthDate,
	OrganizationLevel,
	LAG(Employee.BirthDate) 
		over (partition by OrganizationLevel order by BirthDate asc) "is older",
	LEAD(Person.FirstName + ' '  +  Person.LastName, 1)
		over (partition by OrganizationLevel order by BirthDate asc) "is younger",

	min(Employee.BirthDate)
		OVER (partition by OrganizationLevel) "youngest in org. level",
	max(Employee.BirthDate)
		OVER (partition by OrganizationLevel) "oldest in org. level"

from 
	HumanResources.Employee
inner join 
	Person.Person
on 
	Employee.BusinessEntityID = Person.BusinessEntityID
order by OrganizationLevel asc, BirthDate asc

