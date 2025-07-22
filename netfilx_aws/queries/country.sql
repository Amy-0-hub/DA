SELECT
  TRIM(country) AS country,
  COUNT(\*) AS movie_count
FROM "netflix_db"."netflix_data"
WHERE (country IS NOT NULL) AND type = 'Movie'
GROUP BY TRIM(country)
ORDER BY movie_count DESC
LIMIT 11;