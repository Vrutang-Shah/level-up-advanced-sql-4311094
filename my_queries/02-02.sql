SELECT E.firstName, E.lastName, MIN(S.salesAmount) as LeastExpensive, MAX(S.salesAmount) as MostExpensive, S.soldDate
FROM employee E
RIGHT JOIN sales S on S.employeeID = E.employeeID
WHERE S.soldDate >= DATE('2023-12-31', 'start of year')
GROUP BY E.firstName, E.lastName