/* number of checks by cardnum */

SELECT
	cardnum,
	count(c.ts)
FROM	
	skipass s
LEFT OUTER JOIN
	check c
ON	(s.cardnum = c.cardnum)
GROUP BY
	cardnum