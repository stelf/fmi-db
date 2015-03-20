SELECT 
	count(*)
FROM
	check c
INNER JOIN
	checkpoint cp on 
	( c.altitude = cp.altitude ) and
	( c.seqnum = cp.seqnum ) 
group by
	(slope, itype),
	DATEPART(dateofyear, c.ts)
