-- 6. For each piece, find the most expensive offering of that piece and include the piece name, provider name, and price
-- (note that there could be two providers who supply the same piece at the most expensive price).

-- Looks like if I were to use a GROUP BY that it might throw away results if there were two providers
-- who supply the same piece at the most expensive price
SELECT * FROM Provides
  JOIN Pieces
    ON Pieces.Code = Provides.Piece
  JOIN Providers
    ON Providers.Code = Provides.Provider
  WHERE Price = (
    SELECT max(Price)
      FROM Provides
      WHERE Provides.Piece = Pieces.Code
    );




  