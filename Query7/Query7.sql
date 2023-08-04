--Combine every category with every film rating and limit to the first 100 records--
SELECT category.name, film.rating FROM category
CROSS JOIN film
LIMIT 100
