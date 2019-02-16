-- 19. Apply a 10% discount to all products.
SELECT Name, Price FROM Products;

UPDATE Products
  SET Price = Price * 0.9
  WHERE Price >= 120;

SELECT Name, Price FROM Products;
