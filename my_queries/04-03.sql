-- Display number of cars sold this month and last month

SELECT 
  strftime('%Y-%m', soldDate) as YearMonth, 
  COUNT(*) as CarsSold,
  LAG(COUNT(*), 1, 0) OVER (ORDER BY strftime('%Y-%m', soldDate)) as LastMonthCarsSold
FROM sales 
GROUP BY YearMonth
