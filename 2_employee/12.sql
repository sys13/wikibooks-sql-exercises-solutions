-- 12. Select the name and last name of employees working for departments with a budget greater than $60,000.
SELECT E.Name, E.LastName FROM Employees E
  JOIN Departments D
    ON D.Code = E.Department AND D.Budget > 60000;