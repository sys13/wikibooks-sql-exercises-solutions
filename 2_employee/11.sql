-- 11. Select the name and last name of each employee, along with the name and budget of the employee's department.
SELECT E.Name, E.LastName, D.Name, D.Budget FROM Employees E
  JOIN Departments D
    ON E.Department = D.Code
