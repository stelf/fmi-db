/****** Script for SelectTopNRows command from SSMS  ******/

SELECT 
	NAME,
	count(DISTINCT STARNAME)
FROM
	MOVIE
 JOIN
	MOVIEEXEC
ON
	PRODUCERC# = CERT#
 JOIN
	STARSIN
ON
	MOVIETITLE = TITLE
GROUP BY
	NAME
