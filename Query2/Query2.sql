--Retreive films with rental duration from 5 to 7 and rental rate under 2.99--
SELECT * FROM film
WHERE (rental_duration BETWEEN 5 AND 7) AND (rental_rate < 2.99)
ORDER BY rental_duration;
