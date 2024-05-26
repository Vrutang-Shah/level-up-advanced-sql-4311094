-- For each salesperson, rank the car models they've sold the most

SELECT E.firstName || ' ' || E.lastName AS salesPerson, M.model, COUNT(M.model) as numberSold,
  Rank() OVER (PARTITION BY E.firstName || ' ' || E.lastName ORDER BY COUNT(M.model) DESC) as Rank
FROM Employee E
RIGHT JOIN sales S ON s.employeeId = E.employeeId
INNER JOIN inventory I ON I.inventoryId = S.inventoryId
INNER JOIN model M ON I.modelId = M.modelId 
GROUP BY salesPerson, M.model
ORDER BY salesPerson