-- Create report showing sales per month and an annual total

SELECT strftime('%m', soldDate) as Month, 
  strftime('%Y', soldDate) as Year, 
  SUM(salesAmount) as TotalSales,
  SUM(SUM(salesAmount)) OVER (PARTITION BY strftime('%Y', soldDate) ORDER BY strftime('%Y', soldDate), strftime('%m', soldDate)) as CumulativeSales
FROM sales
GROUP BY Month, Year
ORDER BY Year, Month