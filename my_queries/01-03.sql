-- List all customers & their sales, even if some data is gone

SELECT C.firstName, C.lastName, C.email, S.salesAmount, S.soldDate
FROM customer C
LEFT JOIN Sales S ON C.customerID = S.customerID

UNION

SELECT C.firstName, C.lastName, C.email, S.salesAmount, S.soldDate
FROM customer C
RIGHT JOIN Sales S ON C.customerID = S.customerID