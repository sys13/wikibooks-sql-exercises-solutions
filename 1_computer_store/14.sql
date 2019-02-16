-- 14. Select the names of manufacturer whose products have an average price larger than or equal to $150.
SELECT Manufacturers.Name
  FROM Products
  JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code
  GROUP BY Manufacturers.Code
  HAVING avg(Products.Price) >= 150
  ;