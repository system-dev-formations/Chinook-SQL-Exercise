-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.


SELECT  c.FirstName||" "||c.LastName as "Customer", i.BillingCountry, e.FirstName||" "||e.LastName as "Sale Agent", i.Total
FROM Invoice i
JOIN Customer c
ON c.CustomerId = i.CustomerId
JOIN Employee e
ON e.EmployeeId = c.SupportRepId;