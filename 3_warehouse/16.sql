-- 16. Remove all boxes from saturated warehouses.
DELETE FROM Boxes WHERE Boxes.Warehouse IN (
  SELECT W.Code
    FROM Warehouses W
    LEFT JOIN Boxes B
      ON B.Warehouse = W.Code
    GROUP BY B.Warehouse
    HAVING count(B.Code) > W.Capacity
  );
;