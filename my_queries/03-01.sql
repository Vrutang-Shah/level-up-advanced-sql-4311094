-- SELECT strftime('%Y', soldDate) Years, ROUND(SUM(salesAmount),2) SalesAmount
-- FROM sales
-- GROUP BY Years


WITH YearlySales AS (
SELECT strftime('%Y', soldDate) Years, salesAmount
FROM sales
)

SELECT Years, ROUND(SUM(salesAmount), 2) SalesAmount
FROM YearlySales
GROUP BY Years