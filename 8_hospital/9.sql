-- Obtain the names of all patients (also include, for each patient, the name of the patient's primary care physician), such that all of the following are true:
-- The patient has been prescribed some medication by his/her primary care physician.
-- The patient has undergone a procedure with a cost larger that $5,000
-- The patient has had at least two appointment where the nurse who prepped the appointment was a registered nurse.
-- The patient's primary care physician is not the head of any department.

SELECT P.Name, Phys.Name FROM Patient P, Physician Phys
  WHERE
    P.SSN IN (
      SELECT Prescribes.Patient FROM Patient, Physician, Prescribes
        WHERE Patient.PCP = Physician.EmployeeID
          AND Physician.EmployeeID = Prescribes.Physician
    )
    AND EXISTS (
      SELECT * FROM Undergoes, Procedure
        WHERE Undergoes.Patient = P.SSN
          AND Undergoes.Procedure = Procedure.Code
          AND Procedure.Cost > 5000
    )
    AND 2 <= (
      SELECT count(*) FROM Appointment, Nurse
        WHERE Appointment.PrepNurse = Nurse.EmployeeID
          AND Nurse.Registered = 1
    )
    AND Phys.EmployeeID NOT IN (
      SELECT Head FROM Department
    )
    AND Phys.EmployeeID = P.PCP
  GROUP BY P.SSN
  ;
