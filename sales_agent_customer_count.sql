-- Provide a query that shows the count of customers assigned to each sales agent.


SELECT e.FirstName||" "||e.LastName as "Sales Agent", COUNT(c.SupportRepId) as "Customer Count"
FROM Employee e
JOIN Customer c
ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId;