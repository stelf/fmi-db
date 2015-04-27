create view 
	Courses as 	
SELECT
	distinct course
from 
	Marks;


go

create view 
	marksoverall as 
select 
	COUNT(Mark) as markcount,
	fn,
	course
from 
	Marks mi
group by
	fn, course;

go;

SELECT 
		so.fn, 
		co.course,
		markcount
	from 
		Students so 
	cross join
		Courses co 
	left outer join 
		marksoverall mo on 
	(mo.fn = so.fn and mo.course = co.course)
