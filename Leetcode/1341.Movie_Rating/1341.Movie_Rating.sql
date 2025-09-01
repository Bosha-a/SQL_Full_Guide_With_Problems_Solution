(
SELECT Users.name AS results 
FROM Users
JOIN MovieRating ON MovieRating.user_id = Users.user_id     
GROUP BY Users.user_id
ORDER BY COUNT(*) DESC, Users.name ASC
LIMIT 1
)

UNION ALL

(
SELECT Movies.title
FROM Movies
JOIN MovieRating ON Movies.movie_id = MovieRating.movie_id
WHERE created_at LIKE '2020-02%'
GROUP BY Movies.movie_id
ORDER BY AVG(MovieRating.rating) DESC, Movies.title ASC
LIMIT 1
)
