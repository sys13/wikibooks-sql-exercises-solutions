-- 17. Reduce the budget of all departments by 10%.
SELECT Name, Budget FROM Departments;

UPDATE Departments
  SET Budget = Budget * 0.9;

SELECT Name, Budget FROM Departments;
