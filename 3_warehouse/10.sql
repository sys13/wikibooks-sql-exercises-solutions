-- 10. Select the codes of all the boxes located in Chicago.
SELECT B.Code, W.Location
  FROM Boxes B
  JOIN Warehouses W
    ON B.Warehouse = W.Code AND W.Location = "Chicago";