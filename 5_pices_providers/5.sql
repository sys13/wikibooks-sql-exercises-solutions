-- 5. Select the name of pieces provided by provider with code "HAL".
SELECT Pieces.Name FROM Providers
  JOIN Provides
    ON Providers.Code = Provides.Provider AND Providers.Code = "HAL"
  JOIN Pieces
    ON Pieces.Code = Provides.Piece
  ;
