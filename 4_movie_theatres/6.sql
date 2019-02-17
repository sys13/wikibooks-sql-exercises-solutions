-- 6. Select all data from all movies and, if that movie is being shown in a theater, show the data from the theater.
SELECT * FROM Movies
  JOIN MovieTheaters
    ON MovieTheaters.Code = Movies.Code;