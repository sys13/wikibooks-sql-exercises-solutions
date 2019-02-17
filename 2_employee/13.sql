-- 13. Select the departments with a budget larger than the average budget of all the departments.
SELECT E.Name, E.LastName FROM Employees E
  JOIN Departments D
    ON D.Code = E.Department AND D.Budget > (SELECT avg(Budget) FROM Departments);