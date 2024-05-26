-- SELECT FirstName, LastName, Month, Year, SUM(salesAmount) as TotalSales
-- FROM salesByEmployee
-- GROUP BY FirstName, LastName, Month, Year

WITH salesByEmployee AS (
SELECT E.firstName as FirstName, E.lastName as LastName, strftime('%m', S.soldDate) as Month, strftime('%Y',S.soldDate) as Year, SUM(S.salesAmount) as salesAmount
FROM sales S
LEFT JOIN employee E on E.employeeID = S.employeeID
WHERE Year = '2021'
GROUP BY Year, Month, lastName, firstName
ORDER BY Year, Month, lastName, firstName
)

SELECT FirstName, LastName,
  SUM(CASE WHEN Month = '01' THEN salesAmount ELSE 0 END) AS JanSales,
  SUM(CASE WHEN Month = '02' THEN salesAmount ELSE 0 END) AS FebSales,
  SUM(CASE WHEN Month = '03' THEN salesAmount ELSE 0 END) AS MarSales,
  SUM(CASE WHEN Month = '04' THEN salesAmount ELSE 0 END) AS AprSales,
  SUM(CASE WHEN Month = '05' THEN salesAmount ELSE 0 END) AS MaySales,
  SUM(CASE WHEN Month = '06' THEN salesAmount ELSE 0 END) AS JunSales,
  SUM(CASE WHEN Month = '07' THEN salesAmount ELSE 0 END) AS JulSales,
  SUM(CASE WHEN Month = '08' THEN salesAmount ELSE 0 END) AS AugSales,
  SUM(CASE WHEN Month = '09' THEN salesAmount ELSE 0 END) AS SepSales,
  SUM(CASE WHEN Month = '10' THEN salesAmount ELSE 0 END) AS OctSales,
  SUM(CASE WHEN Month = '11' THEN salesAmount ELSE 0 END) AS NovSales,
  SUM(CASE WHEN Month = '12' THEN salesAmount ELSE 0 END) AS DecSales
FROM salesByEmployee
GROUP BY FirstName, LastName
ORDER BY LastName, FirstName
