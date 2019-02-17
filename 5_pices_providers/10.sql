-- 10. Update the database to reflect that "Susan Calvin Corp." (code "RBT")
-- will not supply any pieces (the provider should still remain in the database).

DELETE FROM Provides
  WHERE Provider = "RBT"
  ;