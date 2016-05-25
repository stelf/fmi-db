/* for each actor, find the most recent movie he took part in */

SELECT 
	M.NAME,
		( 
	SELECT 
		MAX(YEAR) 
	FROM
		MOVIE MV
	INNER JOIN
		STARSIN S
		ON MV.TITLE = S.MOVIETITLE
	WHERE 
		S.STARNAME = M.NAME
	)

FROM
	MOVIESTAR M 
