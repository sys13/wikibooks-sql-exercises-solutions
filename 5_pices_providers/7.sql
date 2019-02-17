-- 7. Add an entry to the database to indicate that "Skellington Supplies" (code "TNBC")
-- will provide sprockets (code "1") for 7 cents each.

INSERT INTO Provides(Piece, Provider, Price)
  VALUES (1, "TNBC", 7);