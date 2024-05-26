SELECT strftime('%Y', soldDate) Years, ROUND(SUM(salesAmount),2) SalesAmount
FROM sales
GROUP BY Years