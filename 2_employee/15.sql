-- 15. Select the name and last name of employees working for departments with second lowest budget.
SELECT E.Name, E.LastName FROM Employees E
  JOIN Departments D
    ON D.Code = E.Department
      AND D.Code = (
        SELECT Code FROM Departments
          ORDER BY Budget ASC
          LIMIT 1
          OFFSET 1
        );

