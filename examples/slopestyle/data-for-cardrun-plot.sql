/* data needed to plot certain cards' runs for certain day */


SELECT 
	altitude,
	ts
FROM
	check
WHERE
	ts > ?
AND
	cardnum = ?
ORDER by
	ts