-- Provide a query only showing the Customers from Brazil.

SELECT FirstName||" "||LastName as "Customers From Brazil"
FROM Customer
where Country = "Brazil"; 