--Rank the customer_id based on the amount that customer id spent on dvd rental--
SELECT customer_id, total_amount,
RANK() OVER (ORDER BY total_amount DESC)
FROM (
    SELECT customer_id, SUM(amount) AS total_amount
    FROM payment
    GROUP BY customer_id
) AS customer_amount;