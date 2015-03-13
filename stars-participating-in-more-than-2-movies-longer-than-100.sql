/****** Script for SelectTopNRows command from SSMS  ******/
/* artisti i broya na filmite s prodxlzhitelnost nad 100 minuti, v koito uchastvat te */

SELECT 
	 count(TITLE), STARNAME
FROM 
	MOVIE
JOIN
	STARSIN
ON	(TITLE=MOVIETITLE AND "YEAR"=MOVIEYEAR)
WHERE
	LENGTH > 100
GROUP BY
	STARNAME
HAVING
	COUNT(TITLE) > 1


