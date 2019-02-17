-- 14. Apply a 20% value reduction to boxes with a value larger than the average value of all the boxes.
SELECT Code, Value FROM Boxes;

UPDATE Boxes
  SET Value = Value * 0.80
  WHERE Value > (SELECT avg(Value) FROM Boxes);

SELECT Code, Value FROM Boxes;