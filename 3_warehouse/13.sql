-- 13. Reduce the value of all boxes by 15%.
SELECT Code, Value FROM Boxes;

UPDATE Boxes
  SET Value = Value * 0.85;

SELECT Code, Value FROM Boxes;