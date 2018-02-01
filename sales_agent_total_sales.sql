-- Provide a query that shows total sales made by each sales agent.

SELECT e.FirstName||" "||e.LastName as "Sales Agent", SUM(i.Total) as "Total for Agent"
FROM Invoice i
JOIN Customer c
ON c.CustomerId = i.CustomerId
JOIN Employee e 
ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId;

--Jane P = $833.03
--Margaret P = $775.40
--Steve J = $720.16