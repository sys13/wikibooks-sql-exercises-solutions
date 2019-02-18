-- Obtain the information for appointments where a patient met with a physician other than his/her primary care physician.
-- Show the following information: Patient name, physician name, nurse name (if any),
-- start and end time of appointment, examination room, and the name of the patient's primary care physician.
SELECT Patient.Name, Physician.Name, Nurse.Name, Appointment.Start, Appointment.End, Appointment.ExaminationRoom, Phys.Name FROM Appointment
  JOIN Physician
    ON Appointment.Physician = Physician.EmployeeID
  JOIN Patient
    ON Appointment.Patient = Patient.SSN
  LEFT JOIN Nurse
    ON Appointment.PrepNurse = Nurse.EmployeeID
  JOIN Physician Phys
    ON Patient.PCP = Phys.EmployeeID
  WHERE Patient.PCP != Appointment.Physician
  ;