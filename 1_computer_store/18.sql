-- 18. Update the name of product 8 to "Laser Printer".
-- Just check it's a good selector
-- SELECT Code, Name FROM Products WHERE Code = 8;

UPDATE Products
  SET Name = "Laser printer"
  WHERE Code = 8;
