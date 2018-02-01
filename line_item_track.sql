-- Provide a query that includes the purchased track name with each invoice line item.

SELECT InvoiceLineId, t.name
FROM InvoiceLine i 
JOIN Track t
ON t.TrackId = i.TrackId
ORDER BY t.TrackId;