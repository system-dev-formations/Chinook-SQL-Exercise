-- Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT c.FirstName||" "||c.LastName as "Customers", i.InvoiceId,i.InvoiceDate,i.BillingCountry
FROM Customer c
LEFT JOIN Invoice i
ON i.CustomerId = c.CustomerId
where c.Country = "Brazil"; 