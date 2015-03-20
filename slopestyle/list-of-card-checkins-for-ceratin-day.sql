SELECT 
	* 
FROM
	check
WHERE
	cardnum = ?
AND
	DATEPART(dayofyear, ts) = ? 
ORDER BY
	ts ASC 

/* placeholder */
/* bind - variable */



