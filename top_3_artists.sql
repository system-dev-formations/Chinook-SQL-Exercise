-- Provide a query that shows the top 3 best selling artists.



SELECT "Artist Name", "Total Earned"
FROM
(SELECT ar.Name as "Artist Name", SUM(t.UnitPrice) as "Total earned"
FROM Track t
JOIN Album a
ON t.AlbumId = a.AlbumId
JOIN Artist ar
ON a.ArtistId = ar.ArtistId
GROUP BY ar.Name)
ORDER BY "Total Earned" DESC;
LIMIT 3;

--#1 IRON MAIDEN w/ $210.87
--#2 LOST w/ $183.08
--#3 U2 w/ $133.65
