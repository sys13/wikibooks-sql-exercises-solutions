-- Obtain the names of all physicians that have performed a medical procedure they have never been certified to perform.
SELECT Physician.Name FROM Physician
  JOIN Undergoes
    ON Physician.EmployeeID = Undergoes.Physician
  JOIN Procedure
    ON Undergoes.Procedure = Procedure.Code
  LEFT JOIN Trained_in
    ON Procedure.Code = Trained_in.Treatment AND Trained_in.Physician = Physician.EmployeeID
  WHERE Trained_In.CertificationDate IS NULL
;
