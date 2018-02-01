--  Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.


SELECT COUNT(InvoiceLineId) as "Number Of Line Items"
FROM InvoiceLine 
WHERE InvoiceId = 37;

--# of line items for id37 = 4