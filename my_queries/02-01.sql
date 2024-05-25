SELECT E.firstName, E.lastName, E.title, COUNT(*) as SalesRecordCount
FROM employee E
RIGHT JOIN sales S ON S.employeeID = E.employeeID
GROUP BY E.firstName, E.lastName, E.title
ORDER BY SalesRecordCount DESC