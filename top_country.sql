--  Which country's customers spent the most?

SELECT "Country", MAX("Total Sales For Country") as "Total Spent"
FROM 
(SELECT BillingCountry as "Country" , SUM(Total) as "Total Sales For Country"
FROM Invoice 
GROUP BY BillingCountry);

--USA with $523.06 spent total