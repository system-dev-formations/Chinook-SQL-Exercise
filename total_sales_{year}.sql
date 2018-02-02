-- What are the respective total sales for each of those years? (2009,2010,2011)


-- 2009 = $449.46
SELECT SUM(Total as "Total Sales")
FROM Invoice
WHERE InvoiceDate between "2009-01-01" AND "2010-01-01";



-- 2010 = $481.45
SELECT SUM(Total )as "Total Sales"
FROM Invoice
WHERE InvoiceDate between "2010-01-01" AND "2011-01-01";




--2011 = $469.58
SELECT SUM(Total)as "Total Sales"
FROM Invoice
WHERE InvoiceDate between "2011-01-01" AND "2012-01-01";
