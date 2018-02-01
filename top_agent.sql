-- Which sales agent made the most in sales over all?

SELECT "Sales Agent" as "Agent Name", MAX("Total for Agent")as "All-time Sales"
FROM
(SELECT e.FirstName||" "||e.LastName as "Sales Agent", SUM(i.Total) as "Total for Agent"
FROM Invoice i
JOIN Customer c
ON c.CustomerId = i.CustomerId
JOIN Employee e 
ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId);

--Jane P with $833.04 over all