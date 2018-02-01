-- Provide a query showing only the Employees who are Sales Agents.

SELECT FirstName||" "||LastName as "Sales Employee"
FROM Employee
WHERE Employee.Title LIKE "Sales%";