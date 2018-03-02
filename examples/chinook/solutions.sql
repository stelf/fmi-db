
select count(*), 
	   e."FirstName" || ' ' || e."LastName" as "Emp. Full Name"
from "Customer" as c 
inner join "Employee" as e on (c."SupportRepId" = e."EmployeeId")
group by e."EmployeeId";


select count(*) "total customer count", 
	   sum(CASE WHEN "Company" is not null then 1 else 0 end)
	   from "Customer";


select distinct x."Name" (	   
	select a."AlbumId",
	a."ArtistId",
	count(t."TrackId") as "cnt"
	from "Album" a 
	inner join "Track" t on (a."AlbumId" = t."AlbumId")
	inner join "Artist" art on (art."ArtistId" = a."ArtistId")
	group by a."AlbumId", a."ArtistId"
	having count(t."TrackId") > 20
	order by  a."AlbumId" desc
) y on (x."ArtistId" = y."ArtistId")


