-- 6. Select all the data of employees that work in department 37 or department 77.
SELECT * FROM Employees
  JOIN Departments D
    ON D.Code = Employees.Department AND Employees.Department IN (37, 77);