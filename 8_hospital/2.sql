-- Same as the previous query, but include the following information in the results:
-- Physician name, name of procedure, date when the procedure was carried out,
-- name of the patient the procedure was carried out on.

SELECT Physician.Name, Procedure.Name, Undergoes.Date, Patient.Name FROM Physician
  JOIN Undergoes
    ON Physician.EmployeeID = Undergoes.Physician
  JOIN Procedure
    ON Undergoes.Procedure = Procedure.Code
  LEFT JOIN Trained_in
    ON Procedure.Code = Trained_in.Treatment AND Trained_in.Physician = Physician.EmployeeID
  JOIN Patient
    ON Undergoes.Patient = Patient.SSN
  WHERE Trained_In.CertificationDate IS NULL

;
