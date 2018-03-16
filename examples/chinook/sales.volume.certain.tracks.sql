/* query volume of sales of tracks that were sold more than once, and then grouped by artist */

SELECT (SELECT "name" 
        FROM   "artist" ain 
        WHERE  ain."artistid" = al."artistid") AS "artist name", 
        SUM(inr.tsales) 
FROM   "album" al 
       inner join "track" tr 
               ON tr."albumid" = al."albumid" 
       inner join (SELECT "trackid", 
                          Count("trackid"), 
                          SUM("unitprice") AS "tsales" 
                   FROM   "invoiceline" 
                   GROUP  BY "trackid" 
                   HAVING Count("trackid") > 1) AS inr 
               ON inr."trackid" = tr."trackid" 
GROUP  BY al."artistid" 
