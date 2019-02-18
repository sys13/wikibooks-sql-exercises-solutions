-- The hospital has several examination rooms where appointments take place.
-- Obtain the number of appointments that have taken place in each examination room.
SELECT ExaminationRoom, count(*) FROM Appointment
  GROUP BY ExaminationRoom