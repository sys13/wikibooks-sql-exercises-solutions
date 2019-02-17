-- Which pilots transported those packages?
SELECT Employee.* FROM Employee
  JOIN Shipment
    ON Employee.EmployeeID = Shipment.Manager
  JOIN Package
    ON Shipment.ShipmentID = Package.Shipment AND Package.Shipment IN (
      SELECT Shipment FROM Package
        JOIN Client
          ON Client.AccountNumber = Package.Sender AND Client.AccountNumber = (
            SELECT AccountNumber FROM Client
              JOIN Package
                ON Client.AccountNumber = Package.Recipient AND Package.Weight = 1.5
          )
        )
  GROUP BY Employee.EmployeeID
  ;
        

