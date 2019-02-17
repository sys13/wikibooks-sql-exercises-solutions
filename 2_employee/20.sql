-- 20. Delete from the table all employees who work in departments with a budget greater than or equal to $60,000.
SELECT E.LastName || ", " || E.Name AS FullName, D.Name, D.Budget FROM Employees E
  JOIN Departments D
    ON E.Department = D.Code AND D.Budget >= 60000;

DELETE FROM Employees
  WHERE Department IN (
    SELECT Code FROM Departments WHERE Budget >= 60000
    );

SELECT E.LastName || ", " || E.Name AS FullName, D.Name, D.Budget FROM Employees E
  JOIN Departments D
    ON E.Department = D.Code AND D.Budget >= 60000;