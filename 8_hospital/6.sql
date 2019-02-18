-- The Patient field in Undergoes is redundant, since we can obtain it from the Stay table.
-- There are no constraints in force to prevent inconsistencies between these two tables.
-- More specifically, the Undergoes table may include a row where the patient ID does not
-- match the one we would obtain from the Stay table through the Undergoes.Stay foreign key.
-- Select all rows from Undergoes that exhibit this inconsistency.

SELECT Undergoes.* FROM Undergoes
  JOIN Stay
    ON Undergoes.Stay = Stay.StayID AND Undergoes.Patient != Stay.Patient
  ;
