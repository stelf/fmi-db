/* най-натоварените три съоръжения общо за последните 30 дни */

SELECT TOP 3
	(cp.slope, cp.itype),
	COUNT(c.*) as 'usage count'
FROM
	check c
INNER JOIN
	checkpoint cp
	ON	(c.altitude = cp.altitude)
	AND	(c.seqnum = cp.seqnum)
WHERE
	c.ts > DATE_SUB(GETDATE(), INTERVAL 30 DAY)
GROUP BY
	(cp.slope, cp.itype),
ORDER BY 
	COUNT(*) DESC

