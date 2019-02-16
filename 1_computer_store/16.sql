-- 16. Select the name of each manufacturer along with the name and price of its most expensive product.
SELECT Manufacturers.Name, Products.Name, Products.Price
  FROM Products
  JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code
  GROUP BY Manufacturers.Code
  HAVING Price = max(Price)
  ;

-- Looking at the solutions, they filter on the join which looks more complex, but maybe it is more
-- efficient because it doesn't have to join data that is going to be HAVING filtered anyways 
SELECT Manufacturers.Name, Products.Name, Products.Price
  FROM Products
  JOIN Manufacturers ON
      Products.Manufacturer = Manufacturers.Code AND
      Products.Price = (
        SELECT max(Price)
          FROM Products
          WHERE Products.Manufacturer = Manufacturers.Code
      )
  ;
 