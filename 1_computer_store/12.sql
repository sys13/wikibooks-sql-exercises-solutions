-- 12. Select the average price of each manufacturer's products, showing only the manufacturer's code.
SELECT Manufacturers.Code, avg(Products.Price)
  FROM Products
  JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code
  GROUP BY Manufacturers.Code
  ;
