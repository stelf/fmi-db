/* number of active projects by employee */

select 
	E.EMPNO, 
	count(*) 
FROM 
	EMP_ACT EA 
INNER JOIN 
	EMPLOYEE E 
ON 
	EA.EMPNO = E.EMPNO 
GROUP BY 
	E.EMPNO

