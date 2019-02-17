-- 9. Set the rating of all unrated movies to "G".
UPDATE Movies
  SET Rating = "G"
  WHERE Rating IS NULL;