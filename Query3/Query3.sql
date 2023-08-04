--List films that have genres containing the words "story" or "tale"--
SELECT film_id, title, description
FROM film
WHERE description ILIKE '%story%' OR description ILIKE '%tale%';
