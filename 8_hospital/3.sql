-- Obtain the names of all physicians that have performed a medical procedure that they are certified to perform,
-- but such that the procedure was done at a date (Undergoes.Date) after the physician's certification expired (Trained_In.CertificationExpires).
SELECT Physician.Name FROM Physician
  JOIN Undergoes
    ON Physician.EmployeeID = Undergoes.Physician
  JOIN Procedure
    ON Undergoes.Procedure = Procedure.Code
  LEFT JOIN Trained_in
    ON Procedure.Code = Trained_in.Treatment AND Trained_in.Physician = Physician.EmployeeID
  WHERE Trained_In.CertificationExpires < Undergoes.Date
;
