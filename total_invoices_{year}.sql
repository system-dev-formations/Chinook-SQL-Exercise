-- How many Invoices were there in 2009 and 2011?

SELECT COUNT(InvoiceId as "Total Invoices")
FROM Invoice
WHERE InvoiceDate between "2009-01-01" AND "2011-01-01";