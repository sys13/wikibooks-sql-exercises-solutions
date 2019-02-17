-- 3. Obtain the average price of each piece (show only the piece code and the average price).
SELECT Provides.Piece, avg(Price) FROM Pieces
  JOIN Provides
    ON Pieces.Code = Provides.Piece
  GROUP BY Code
  ;