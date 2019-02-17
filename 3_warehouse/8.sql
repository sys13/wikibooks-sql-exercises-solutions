-- 8. Select the warehouse codes, along with the number of boxes in each warehouse.
-- Optionally, take into account that some warehouses are empty
-- (i.e., the box count should show up as zero, instead of omitting the warehouse from the result).
SELECT W.Code, count(B.Code) FROM Warehouses W
  LEFT JOIN Boxes B
    ON W.Code = B.Warehouse
  GROUP BY W.Code
    ;
