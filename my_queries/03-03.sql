-- Sales of Car that are electric

SELECT S.soldDate, S.salesAmount, I.colour, M.model, I.year, M.EngineType
FROM sales S
INNER JOIN inventory I ON I.inventoryId = S.inventoryID
INNER JOIN model M ON M.modelID = I.modelID
WHERE M.EngineType = 'Electric'

-- Sales of Car that are electric using subquery

SELECT S.soldDate, S.salesAmount, I.colour, I.year
FROM sales S
INNER JOIN inventory I ON S.inventoryId = I.inventoryID
WHERE I.modelId IN (
  SELECT modelId FROM model
  WHERE EngineType = 'Electric'
)
