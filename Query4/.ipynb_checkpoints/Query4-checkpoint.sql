--Calculate average amount that customer spent on DVD rental--
SELECT p.customer_id, c.first_name, c.last_name, AVG(p.amount) AS avg_amount 
FROM payment p
LEFT JOIN customer c ON p.customer_id = c.customer_id
GROUP BY p.customer_id, c.first_name, c.last_name
ORDER BY avg_amount DESC;
