select 
	username,
	count(*) as logincount
from 
	history 
where 
	ts > (values current date) 
	and operation = 'login'
group by 
	username
order by
	logincount desc
limit 3
