-- Provide a query that shows the top 5 most purchased songs.


SELECT "Track Name", "Units Sold"
FROM
(SELECT COUNT(il.Quantity) as "Units Sold", t.Name "Track Name"
FROM Track t
JOIN InvoiceLine il
ON il.TrackId = t.TrackId
GROUP BY t.TrackId)
ORDER BY "Units Sold" DESC
LIMIT 5;

