--Categorize films based on their run time--
SELECT film_id, title,
       CASE
           WHEN length <= 75 THEN 'Short'
		   WHEN length <= 120 THEN 'Medium'
           ELSE 'Long'
       END AS run_time
FROM film;
