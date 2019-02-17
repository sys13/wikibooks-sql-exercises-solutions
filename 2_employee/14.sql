-- 14. Select the names of departments with more than two employees.
-- Using GROUP BY/HAVING
SELECT D.Name FROM Departments D
  JOIN Employees E
    ON D.Code = E.Department
  GROUP BY D.Name
  HAVING count(E.SSN) > 2;

-- Using a subquery
SELECT D.Name FROM Departments D
  JOIN Employees E
    ON D.Code = E.Department
      AND D.Code IN (
        SELECT Department FROM Employees
          GROUP BY Department
          HAVING count(*) > 2
        )
  GROUP BY D.Name;