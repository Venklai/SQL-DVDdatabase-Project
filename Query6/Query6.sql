--Calculate the number of dvd rental in countries and limit to the first 30 records--
SELECT co.country, COUNT(*) AS rental_count FROM rental r
JOIN customer c ON r.customer_id = c.customer_id
JOIN address a ON c.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country co ON ci.country_id = co.country_id
GROUP BY co.country
LIMIT 30;
