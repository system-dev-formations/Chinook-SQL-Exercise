-- Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre

SELECT a.Title as "Album", mt.Name as "Media type", g.Name as "Genre"
FROM Track t
JOIN Album a 
ON a.AlbumId = t.AlbumId
JOIN MediaType mt 
ON mt.MediaTypeId = t.MediaTypeId
JOIN Genre g
ON t.GenreId = g.GenreId
GROUP BY a.Title;