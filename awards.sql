SELECT  name, earnings_rank
FROM movies
WHERE earnings_rank = (SELECT MIN(earnings_rank)
                       FROM movies
                       WHERE id IN (SELECT movies_id
                                           FROM oscars
                                           WHERE type = "Best Picture"))

                                           