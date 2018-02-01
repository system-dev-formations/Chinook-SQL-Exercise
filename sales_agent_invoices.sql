--  Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.



SELECT e.FirstName||" "|| e.LastName as "Name", i.InvoiceId
FROM Employee e
JOIN Invoice i
ON i.CustomerId = c.CustomerId
JOIN Customer c
ON c.SupportRepId = e.EmployeeId;



