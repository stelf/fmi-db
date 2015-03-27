
/* numbers of skipasses used 
at least once in certain day */

SELECT 
	DISTINCT
	cardnum
FROM
	check
WHERE
	ts > '2015-03-23'

------

/* ditto */

SELECT
	count(cardtype)
FROM	
	skipass s
INNER JOIN
	check c
ON	(s.cardnum = c.cardnum)
WHERE
	ts > '2015-03-23'
and
	ts < '2015-03-24'

