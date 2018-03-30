SELECT * 
FROM (
	SELECT 
		tin.id as curr,
		(LAG(tin.id, 1) OVER (order by id asc)) as prev
	FROM Test.TempNum tin
) innr
WHERE 
  innr.prev != innr.curr - 1
