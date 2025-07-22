WITH genre_expanded AS (
  SELECT
  TRIM(genre) AS genre
  FROM "netflix_db"."netflix_data"
  CROSS JOIN UNNEST(split(genres, ',')) AS t(genre)
  )
SELECT
  distinct(genre),
  COUNT(\*) AS count
FROM genre_expanded
GROUP BY genre
ORDER BY count DESC
LIMIT 10;

