/* брой на изпитаните според курса, който са посещавали */


select 
	count(sss.fn), 
	sss.course
from 
	(
	SELECT
		distinct fn, 
		course
	from
		Marks
) AS sss
	group by sss.course;
