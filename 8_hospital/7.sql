-- Obtain the names of all the nurses who have ever been on call for room 123.
SELECT DISTINCT Name FROM Nurse
  JOIN On_Call
    ON Nurse.EmployeeID = On_Call.Nurse
  JOIN Block
    ON On_Call.BlockFloor = Block.Floor AND On_Call.BlockCode = Block.Code
  JOIN Room
    ON Block.Floor = Room.BlockFloor AND Block.Code = Room.BlockCode AND Room.Number = 123
  ;