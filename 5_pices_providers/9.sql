-- 9. Update the database to reflect that "Susan Calvin Corp." (code "RBT") will not supply bolts (code 4).
DELETE FROM Provides
  WHERE Provider = 'RBT' AND Piece = 4
  ;