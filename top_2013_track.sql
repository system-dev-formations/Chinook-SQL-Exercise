--  Provide a query that shows the most purchased track of 2013.



SELECT "Track Name" , MAX("Units Sold") as "Units Sold"
FROM
(SELECT Name as "Track Name", COUNT(il.TrackId) as "Units Sold"
FROM Track t
JOIN InvoiceLine il
ON t.TrackId =  il.TrackId
JOIN Invoice i 
ON i.InvoiceId = il.InvoiceId
WHERE i.InvoiceDate BETWEEN "2013-01-01" AND "2014-01-01"
GROUP BY "Track Name");