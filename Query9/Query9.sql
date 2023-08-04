--Calaculate rental count and rental duration of each customer--
WITH customer_rentals AS (
    SELECT customer_id,
           COUNT(*) AS rental_count,
           SUM(DATE_PART('hour', return_date - rental_date)) AS rental_duration_in_hour
    FROM rental
    GROUP BY customer_id
)
SELECT c.customer_id, c.first_name, c.last_name, cr.rental_count, cr.rental_duration_in_hour
FROM customer c
JOIN customer_rentals cr ON c.customer_id = cr.customer_id
ORDER BY cr.rental_duration_in_hour DESC

