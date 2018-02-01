--  Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT i.InvoiceId, COUNT(il.InvoiceLineId) as "Number of invoice lines "
FROM Invoice i
JOIN InvoiceLine il
ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId;

