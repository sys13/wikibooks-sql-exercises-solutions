-- 9. Select the number of employees in each department (you only need to show the department code and the number of employees).
SELECT Department, COUNT(*)
  FROM Employees
  GROUP BY Department;

  