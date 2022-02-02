SELECT * FROM final_project2.netflix_movies;

-- First I will be working on the netflix movies table
--Find the sum of Runtime from netflix_movies

SELECT sum(Runtime) FROM final_project2.netflix_movies;

--Find the Average runtime by title
SELECT title, avg(Runtime) AS 'Average Runtime' FROM final_project2.netflix_movies
GROUP BY title;

--Movies premiere by 2016-2020
-- i will be looking at all the movies premiere between year 2016 and 2020
SELECT * FROM final_project2.netflix_movies
WHERE Premiere BETWEEN '2016-01-01' and '2020-12-31';

--Find the maximum score from each Genre
-- here am going to inner join the 2 tables

SELECT * FROM final_project2.netflix_movies
SELECT * FROM final_project2.imdb_scores
SELECT * FROM final_project2.netflix_movies tb1
INNER JOIN final_project2.imdb_scores tb2
ON tb1.title = tb2.title;
SELECT tb2.title, tb1.genre, max(tb2.`imdb score`) AS 'Maximum Score'
FROM final_project2.netflix_movies tb1
INNER JOIN final_project2.imdb_scores tb2
ON tb1.title = tb2.title
GROUP BY tb2.title,tb1.genre;







SELECT * FROM final_project2.imdb_scores
--Find case where  is < 5 then is low, =5.5 medium and > 5.5 high
-- here am going to select the imdb table and grade the scores
SELECT *, case
WHEN `imdb score` < 5 THEN 'low'
WHEN `imdb score` = 5.5 THEN 'medium'
ELSE 'high' END AS 'Rate'FROM final_project2.imdb_scores;


--Count how many Genre are available
--here i will be using the netflix_movies table to count the number of genre
--will select all the tb1 

SELECT * FROM final_project2.netflix_movies
SELECT count(Genre) FROM final_project2.netflix_movies;













 
