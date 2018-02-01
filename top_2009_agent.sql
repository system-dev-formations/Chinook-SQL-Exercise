-- Which sales agent made the most in sales in 2009?
-- Hint: Use the MAX function on a subquery

SELECT "Sales Agent" as "Agent Name", MAX("Total for Agent")as "Amount in Sales"
FROM


(SELECT e.FirstName||" "||e.LastName as "Sales Agent", SUM(i.Total) as "Total for Agent"
FROM Invoice i
JOIN Customer c
ON c.CustomerId = i.CustomerId
JOIN Employee e 
ON c.SupportRepId = e.EmployeeId
WHERE i.InvoiceDate BETWEEN "2009-01-01" AND "2010-01-01" 
GROUP BY e.EmployeeId);