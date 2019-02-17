-- 7. Show the titles of movies not currently being shown in any theaters.
SELECT Movies.Code, Title FROM Movies
  LEFT JOIN MovieTheaters
    ON Movies.Code = MovieTheaters.Code
  WHERE Movies.Code NOT IN (
      SELECT distinct Movie FROM MovieTheaters WHERE Movie IS NOT NULL)
    ;

