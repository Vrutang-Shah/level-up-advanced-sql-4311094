

SELECT E.firstName, E.lastName, SUM(S.salesAmount) as salesAmount
FROM employee E
LEFT JOIN sales S ON S.employeeId = E.employeeId
WHERE E.title = 'Sales Person'
GROUP BY E.firstName, E.lastName
HAVING salesAmount IS NULL;
