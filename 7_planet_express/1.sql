-- Who received a 1.5kg package?
SELECT Client.* FROM Client
  JOIN Package
    ON Client.AccountNumber = Package.Recipient AND Package.Weight = 1.5
  ;