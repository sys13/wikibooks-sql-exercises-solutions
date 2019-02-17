-- 9. Select the codes of all warehouses that are saturated
-- (a warehouse is saturated if the number of boxes in it is larger than the warehouse's capacity).
SELECT W.Code
  FROM Warehouses W
  LEFT JOIN Boxes B
    ON B.Warehouse = W.Code
  GROUP BY B.Warehouse
  HAVING count(B.Code) > W.Capacity
  ;