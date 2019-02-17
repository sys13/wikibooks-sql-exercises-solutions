-- 19. Delete from the table all employees in the IT department (code 14).
SELECT Name, Department FROM Employees WHERE Department = 14;

DELETE FROM Employees
  WHERE Department = 14;

SELECT Name, Department FROM Employees WHERE Department = 14;