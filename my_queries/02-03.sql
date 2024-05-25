SELECT E.firstName || ' ' || E.LastName AS EmployeeName, count(S.soldDate) as NumberOfCarSold
FROM employee E
RIGHT JOIN sales S ON S.employeeId = E.employeeId
-- WHERE S.soldDate <= Date('2023-12-31')
WHERE S.soldDate BETWEEN Date('2023-12-31', 'start of year') AND Date('2023-12-31')
GROUP BY EmployeeName
HAVING NumberOfCarSold > 5
ORDER BY NumberOfCarSold DESC