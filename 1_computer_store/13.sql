-- 13. Select the average price of each manufacturer's products, showing the manufacturer's name.
SELECT Manufacturers.Name, avg(Products.Price)
  FROM Products
  JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code
  GROUP BY Manufacturers.Code
  ;