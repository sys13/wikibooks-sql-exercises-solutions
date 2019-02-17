-- 4. Obtain the names of all providers who supply piece 1.
SELECT Name FROM Provides
  JOIN Providers
    ON Providers.Code = Provides.Provider AND Provides.Piece = 1;