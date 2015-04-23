select 
	MIN(DateDiff(year, BirthDate, HireDate)) as "youngest hired", 
	avg(DateDiff(year, BirthDate, HireDate)) as "average hire date",
	MAX(DateDiff(year, BirthDate, HireDate)) as "oldest hired"
from HumanResources.Employee

	
