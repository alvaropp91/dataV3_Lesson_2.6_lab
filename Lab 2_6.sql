-- Lab SQL 2.6

-- 1 question
 
SELECT last_name
FROM sakila.actor
GROUP BY last_name
HAVING count(*) = 1;

-- 2 question

SELECT last_name
FROM sakila.actor
GROUP BY last_name
HAVING count(*) > 1;


-- 3 question

SELECT count(rental_id) FROM sakila.rental 
WHERE staff_id='1';

SELECT count(rental_id) FROM sakila.rental 
WHERE rental_id='1';

-- 4 question

SELECT EXTRACT(YEAR FROM release_year) AS year, COUNT(*) AS film_count
FROM film
GROUP BY EXTRACT(YEAR FROM release_year);

SELECT release_year, COUNT(*) AS film_count
FROM film
GROUP BY release_year;

-- 5 question

SELECT rating, COUNT(*) AS film_count
FROM film
GROUP BY rating;

-- 6 question

SELECT rating, ROUND(AVG(length), 2) AS average_length
FROM film
GROUP BY rating;

-- 7 question

SELECT rating
FROM film
GROUP BY rating
HAVING AVG(length) > 120;

-- 8 question

SELECT title, length
FROM film
WHERE length IS NOT NULL AND length > 0
ORDER BY length;