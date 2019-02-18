-- Same as the previous query, but include the following information in the results:
-- Physician name, name of procedure, date when the procedure was carried out,
-- name of the patient the procedure was carried out on, and date when the certification expired.
SELECT Physician.Name, Procedure.Name, Undergoes.Date, Trained_In.CertificationExpires FROM Physician
  JOIN Undergoes
    ON Physician.EmployeeID = Undergoes.Physician
  JOIN Procedure
    ON Undergoes.Procedure = Procedure.Code
  LEFT JOIN Trained_in
    ON Procedure.Code = Trained_in.Treatment AND Trained_in.Physician = Physician.EmployeeID
  WHERE Trained_In.CertificationExpires < Undergoes.Date
;
