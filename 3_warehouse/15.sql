-- 15. Remove all boxes with a value lower than $100.
SELECT * FROM Boxes;

DELETE FROM Boxes WHERE Value < 100;

SELECT * FROM Boxes;
