/****** Script for SelectTopNRows command from SSMS  ******/
 SELECT 
	CLASS,
    MAX(LAUNCHED) as MAXYEAR,
	MIN(LAUNCHED) as MINYEAR,
	AVG(LAUNCHED) as AVGYEAR,
	COUNT(*) as SHIPCOUNT
 FROM 
	ships.dbo.SHIPS
 WHERE
	"LAUNCHED" > 1940 AND
	"LAUNCHED" < 1950 
 GROUP BY CLASS
 HAVING
	COUNT(*) >= 3
	