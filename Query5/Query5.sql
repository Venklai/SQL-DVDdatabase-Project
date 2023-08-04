--Calculate the number of films in categories "Games", "Sports" and "Music"--
SELECT c.name AS category_name, COUNT(*) AS film_count
FROM category c
FULL JOIN film_category fc ON c.category_id = fc.category_id
GROUP BY c.name
HAVING c.name IN ('Games','Sports','Music')
