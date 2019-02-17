-- 7. Select the code of each box, along with the name of the city the box is located in.
SELECT B.Code, W.Location
  FROM Boxes B
  JOIN Warehouses W
    ON B.Warehouse = W.Code;