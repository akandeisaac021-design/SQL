 SELECT SKU, SKU_Description
 FROM INVENTORY;
 
SELECT SKU_Description, SKU
FROM INVENTORY;


SELECT WarehouseID
FROM INVENTORY;


SELECT DISTINCT WarehouseID
FROM INVENTORY;


SELECT WarehouseID
FROM INVENTORY;


SELECT SKU,
       SKU_Description,
       WarehouseID,
       QuantityOnHand,
       QuantityOnOrder
FROM INVENTORY;

SELECT *
FROM INVENTORY;


SELECT *
FROM INVENTORY
WHERE QuantityOnHand > 0;


SELECT SKU, SKU_Description
FROM INVENTORY
WHERE QuantityOnHand = 0;


SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0
ORDER BY WarehouseID ASC;


SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand > 0
ORDER BY WarehouseID DESC, SKU ASC;


SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0
  AND QuantityOnOrder > 0
ORDER BY WarehouseID DESC, SKU ASC;


SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0
   OR QuantityOnOrder = 0
ORDER BY WarehouseID DESC, SKU ASC;


SELECT SKU,
       SKU_Description,
       WarehouseID,
       QuantityOnHand
FROM INVENTORY
WHERE QuantityOnHand > 1
  AND QuantityOnHand < 10;

  
  SELECT SKU,
       SKU_Description,
       WarehouseID,
       QuantityOnHand
FROM INVENTORY
WHERE QuantityOnHand BETWEEN 2 AND 9;


SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE 'Half-Dome%';


SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE '%Climb%';


SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE '__d%';


SELECT COUNT(QuantityOnHand) AS NumberOfRows,
       SUM(QuantityOnHand)   AS TotalOnHand,
       AVG(QuantityOnHand)   AS AverageOnHand,
       MIN(QuantityOnHand)   AS MinimumOnHand,
       MAX(QuantityOnHand)   AS MaximumOnHand
FROM INVENTORY;


SELECT Warehou  seID,
       SUM(QuantityOnHand) AS TotalItemsOnHand
FROM INVENTORY
GROUP BY WarehouseID
ORDER BY TotalItemsOnHand DESC;


SELECT WarehouseID,
       SUM(QuantityOnHand) AS TotalItemsOnHandLT3
FROM INVENTORY
WHERE QuantityOnHand < 3
GROUP BY WarehouseID
ORDER BY TotalItemsOnHandLT3 DESC;


SELECT WarehouseID,
       SUM(QuantityOnHand) AS TotalItemsOnHandLT3
FROM INVENTORY
WHERE QuantityOnHand < 3
GROUP BY WarehouseID
HAVING COUNT(*) < 2
ORDER BY TotalItemsOnHandLT3 DESC;


SELECT SKU,
       SKU_Description,
       INVENTORY.WarehouseID,
       WarehouseCity,
       WarehouseState
FROM INVENTORY, WAREHOUSE
WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
  AND (
       WarehouseCity = 'Atlanta'
       OR WarehouseCity = 'Bangor'
       OR WarehouseCity = 'Chicago'
      );

      
SELECT SKU,
       SKU_Description,
       INVENTORY.WarehouseID,
       WarehouseCity,
       WarehouseState
FROM INVENTORY, WAREHOUSE
WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
  AND WarehouseCity IN ('Atlanta','Bangor','Chicago');

  
  SELECT SKU,
       SKU_Description,
       INVENTORY.WarehouseID,
       WarehouseCity,
       WarehouseState
FROM INVENTORY, WAREHOUSE
WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
  AND WarehouseCity <> 'Atlanta'
  AND WarehouseCity <> 'Bangor'
  AND WarehouseCity <> 'Chicago';

  
  SELECT SKU,
       SKU_Description,
       INVENTORY.WarehouseID,
       WarehouseCity,
       WarehouseState
FROM INVENTORY, WAREHOUSE
WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
  AND WarehouseCity NOT IN ('Atlanta','Bangor','Chicago');
  
  SELECT SKU_Description + ' is located in ' + WarehouseCity AS ItemLocation
FROM INVENTORY
JOIN WAREHOUSE
ON INVENTORY.WarehouseID = WAREHOUSE.WarehouseID;


SELECT CONCAT(SKU_Description,
              ' is located in ',
              WarehouseCity) AS ItemLocation
FROM INVENTORY
JOIN WAREHOUSE
ON INVENTORY.WarehouseID = WAREHOUSE.WarehouseID;


SELECT SKU,
       SKU_Description,
       WarehouseID
FROM INVENTORY
WHERE WarehouseID IN
(
    SELECT WarehouseID
    FROM WAREHOUSE
    WHERE Manager = 'Lucille Smith'
);


SELECT SKU,
       SKU_Description,
       INVENTORY.WarehouseID
FROM INVENTORY, WAREHOUSE
WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
  AND Manager = 'Lucille Smith';

  
  SELECT SKU,
       SKU_Description,
       INVENTORY.WarehouseID
FROM INVENTORY
JOIN WAREHOUSE
ON INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
WHERE Manager = 'Lucille Smith';


SELECT WarehouseID,
       AVG(QuantityOnHand) AS AverageQuantityOnHand
FROM INVENTORY
WHERE WarehouseID IN
(
    SELECT WarehouseID
    FROM WAREHOUSE
    WHERE Manager = 'Lucille Smith'
)
GROUP BY WarehouseID;


SELECT INVENTORY.WarehouseID,
       AVG(QuantityOnHand) AS AverageQuantityOnHand
FROM INVENTORY, WAREHOUSE
WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
  AND Manager = 'Lucille Smith'
GROUP BY INVENTORY.WarehouseID;


SELECT INVENTORY.WarehouseID,
       AVG(QuantityOnHand) AS AverageQuantityOnHand
FROM INVENTORY
JOIN WAREHOUSE
ON INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
WHERE Manager = 'Lucille Smith'
GROUP BY INVENTORY.WarehouseID;


SELECT WAREHOUSE.WarehouseID,
       WarehouseCity,
       WarehouseState,
       Manager,
       SKU,
       SKU_Description,
       QuantityOnHand
FROM WAREHOUSE
JOIN INVENTORY
ON WAREHOUSE.WarehouseID = INVENTORY.WarehouseID
WHERE Manager = 'Lucille Smith';


SELECT WarehouseID,
       QuantityOnOrder,
       SUM(QuantityOnOrder) AS TotalItemsOnOrder,
       SUM(QuantityOnHand)  AS TotalItemsOnHand
FROM INVENTORY
GROUP BY WarehouseID, QuantityOnOrder;


SELECT WAREHOUSE.WarehouseID,
       WarehouseCity,
       WarehouseState,
       Manager,
       SquareFeet,
       SKU,
       SKU_Description,
       QuantityOnHand,
       QuantityOnOrder
FROM WAREHOUSE
LEFT OUTER JOIN INVENTORY
ON WAREHOUSE.WarehouseID = INVENTORY.WarehouseID;