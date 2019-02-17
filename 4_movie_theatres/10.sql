-- 10. Remove movie theaters projecting movies rated "NC-17".
DELETE FROM MovieTheaters
  WHERE Movie IN (
    SELECT Code FROM Movies
      WHERE Movies.Rating = "NC-17"
      );