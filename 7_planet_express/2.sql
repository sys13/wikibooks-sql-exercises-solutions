-- What is the total weight of all the packages that he sent?
SELECT avg(Weight) FROM Package
  JOIN Client
    ON Client.AccountNumber = Package.Sender AND Client.AccountNumber = (
      SELECT AccountNumber FROM Client
        JOIN Package
          ON Client.AccountNumber = Package.Recipient AND Package.Weight = 1.5
    )
  ;