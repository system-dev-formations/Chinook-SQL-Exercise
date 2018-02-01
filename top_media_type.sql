-- Provide a query that shows the most purchased Media Type.


SELECT "Media Type" as "Top Media Type", MAX("Times Purchased") as "Times Purchased"
FROM
(SELECT m.Name as "Media type" , COUNT (il.Quantity) as "Times Purchased"
FROM InvoiceLine il
JOIN Track t
ON il.TrackId = t.Trackid
JOIN MediaType m
ON m.MediaTypeId = t.MediaTypeId
GROUP BY m.Name);

--MPEG audio file w/ 1,976 purchases
