-- 15. Select the name and price of the cheapest product.
SELECT Name, Price
  FROM Products
  ORDER BY Price ASC
  LIMIT 1
  ;