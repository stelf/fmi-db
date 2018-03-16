
/* парчета на каква стойност е качил в базата всеки артист (без компилации)? */
/* total value of tracks uploaded by certain artists (not including single tracks in 'Various Artists' compilations) */

/* SQLITE version */

SELECT   ar.name as "artistname",
         al.title as "albumname",
         al.albumid,
         ar.artistid,
         sum(unitprice) as "total amount"
FROM     albums as al
JOIN     artists as ar
ON       al.artistid = ar.artistid
JOIN     tracks as tr
ON       al.albumid = tr.albumid
WHERE    ar.artistid != ( 
          select artistid 
          from artists arin 
          where arin.name = 'Various Artists')
GROUP BY ar.artistid, al.albumid
ORDER by ar.artistid

/* PostgreSQL Version */


SELECT   ar."Name" as "artistname",
         al."Title" as "albumname",
         al."AlbumId",
         ar."ArtistId",
         sum("UnitPrice") as "total amount"
FROM     "Album" as al
JOIN     "Artist" as ar
ON       al."ArtistId" = ar."ArtistId"
JOIN     "Track" as tr
ON       al."AlbumId" = tr."AlbumId"
WHERE    ar."ArtistId" != ( 
          select "ArtistId" 
          from "Artist" arin 
          where arin."Name" = 'Various Artists')
GROUP BY ar."ArtistId", al."AlbumId"
ORDER by ar."ArtistId"

