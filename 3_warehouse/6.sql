-- 6. Same as previous exercise, but select only those warehouses where the average value of the boxes is greater than 150.
SELECT Warehouse, avg(Value) FROM Boxes
  GROUP BY Warehouse
  HAVING avg(Value) > 150
  ;