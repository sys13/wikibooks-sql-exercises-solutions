-- 5. Select the warehouse code and the average value of the boxes in each warehouse.
SELECT Warehouse, avg(Value) FROM Boxes
  GROUP BY Warehouse;