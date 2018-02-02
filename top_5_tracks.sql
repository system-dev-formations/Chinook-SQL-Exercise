-- Provide a query that shows the top 5 most purchased songs.


SELECT t.Name, count(t.Name) as "PurchaseCount"
FROM Track t
JOIN InvoiceLine l on l.TrackId =t.Trackid
group by t.Name
order by PurchaseCount desc
limit 5;