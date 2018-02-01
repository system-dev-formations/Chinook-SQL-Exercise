--  Provide a query that shows the total sales per country.

SELECT BillingCountry , SUM(Total) as "Total Sales For Country"
FROM Invoice 
GROUP BY BillingCountry; 