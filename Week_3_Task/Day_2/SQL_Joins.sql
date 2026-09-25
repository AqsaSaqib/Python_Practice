-- 1. Customer Name, Email, City, and Country
/*SELECT c.first_name, c.last_name, c.email, ci.city, co.country
FROM customer c
JOIN address a  ON c.address_id = a.address_id
JOIN city ci    ON a.city_id = ci.city_id
JOIN country co ON ci.country_id = co.country_id;*/


-- 2. Every payment with Customer Name, Film Title, and Amount
/*SELECT c.first_name, c.last_name, f.title, p.amount
FROM payment p
JOIN customer c  ON p.customer_id = c.customer_id
JOIN rental r    ON p.rental_id = r.rental_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f      ON i.film_id = f.film_id; */

-- 3. Top 10 customers by total amount spent
/* SELECT c.first_name, c.last_name, SUM(p.amount) AS total_spent
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC
LIMIT 10; */ 

-- 4. Each film with its Category and Rental Rate
/* SELECT f.title, cat.name AS category, f.rental_rate
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category cat     ON fc.category_id = cat.category_id; */

-- 5.All actors in each film
/* SELECT f.title, a.first_name, a.last_name
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a       ON fa.actor_id = a.actor_id
ORDER BY f.title; */

-- 6. How many films in each category
/* SELECT cat.name AS category, COUNT(fc.film_id) AS total_films
FROM category cat
JOIN film_category fc ON cat.category_id = fc.category_id
GROUP BY cat.name
ORDER BY total_films DESC; */

-- 7. Categories with the highest revenue
/* SELECT cat.name AS category, SUM(p.amount) AS total_revenue
FROM payment p
JOIN rental r         ON p.rental_id = r.rental_id
JOIN inventory i      ON r.inventory_id = i.inventory_id
JOIN film_category fc ON i.film_id = fc.film_id
JOIN category cat     ON fc.category_id = cat.category_id
GROUP BY cat.name
ORDER BY total_revenue DESC; */

-- 8.Customers who rented more than 20 films
/* SELECT c.first_name, c.last_name, COUNT(r.rental_id) AS total_rentals
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(r.rental_id) > 20
ORDER BY total_rentals DESC; */

-- 9. Cities with the highest rental revenue
/* SELECT ci.city, SUM(p.amount) AS total_revenue
FROM payment p
JOIN customer c ON p.customer_id = c.customer_id
JOIN address a  ON c.address_id = a.address_id
JOIN city ci    ON a.city_id = ci.city_id
GROUP BY ci.city
ORDER BY total_revenue DESC
LIMIT 10; */

-- Bonus Challange (Which actor has generated the highest total rental revenue?)
/* SELECT a.first_name, a.last_name, SUM(p.amount) AS total_revenue
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN inventory i   ON fa.film_id = i.film_id
JOIN rental r      ON i.inventory_id = r.inventory_id
JOIN payment p     ON r.rental_id = p.rental_id
GROUP BY a.actor_id, a.first_name, a.last_name
ORDER BY total_revenue DESC
LIMIT 1; */