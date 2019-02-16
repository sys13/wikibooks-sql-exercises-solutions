-- 10. Select all the data from the products, including all the data for each product's manufacturer.
SELECT * FROM Products JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code;