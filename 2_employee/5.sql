-- 5. Select all the data of employees that work in department 14.
SELECT * FROM Employees
  JOIN Departments D
    ON D.Code = Employees.Department AND Employees.Department = 14;