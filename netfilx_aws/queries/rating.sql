SELECT
   release_year,
   rating,
   COUNT(\*) AS title_count
FROM "netflix_db"."netflix_data"
WHERE release_year >= 2014
GROUP BY release_year, rating
ORDER BY release_year ASC, title_count DESC