# SQL JOINs Practice: DVD Rental Database

Week 3, Day 2 task. Practicing **SQL JOINs** in PostgreSQL using the [DVD Rental sample database](https://neon.com/postgresql/getting-started/sample-database).
The database is for a shop that rents out DVDs. A customer rents a DVD copy of a film and makes a payment.

---

## Files

| File | What's inside |
|---|---|
| `SQL_Joins.sql` | All JOIN queries for the challenges |
| `Relationship_Discovery.md` | How the tables are connected |
| `Concept_Check.md` | Answers to concept questions |
| `Screenshots/` | Query outputs from PostgreSQL |

---

## What is a JOIN?

A JOIN connects two tables using a column they both have. For example, `customer` and `address` both have `address_id`, so we join them `ON c.address_id = a.address_id`.

---

## How Each Question Was Solved

**1. Customer Name, Email, City, and Country**
Joined `customer → address → city → country` step by step, because the customer table only stores an `address_id`, not the city or country.
---

**2. Every Payment with Customer Name, Film Title, and Amount**
Joined `payment → customer` to get the name, and `payment → rental → inventory → film` to get the title, because a payment doesn't know the film directly.
--- 

**3. Top 10 Customers by Total Amount Spent**
Joined `customer → payment` using `customer_id`, added up payments with `SUM`, sorted from highest to lowest, and kept the top 10 with `LIMIT 10`.
--- 

**4. Each Film with its Category and Rental Rate**
Joined `film → film_category → category`, where `film_category` is a bridge table that links films to their categories.
--- 

**5. All Actors in Each Film**
Joined `film → film_actor → actor`, where `film_actor` is a bridge table that links films to their actors.
--- 

**6. How Many Films in Each Category**
Joined `category → film_category` using `category_id` and counted the films in each category with `COUNT`.
--- 

**7. Categories with the Highest Revenue**
Joined `payment → rental → inventory → film_category → category` to connect the money to a category, then added it up with `SUM`.
--- 

**8. Customers Who Rented More Than 20 Films**
Joined `customer → rental` using `customer_id`, counted rentals with `COUNT`, and kept only customers above 20 using `HAVING`.
--- 

**9. Cities with the Highest Rental Revenue**
Joined `payment → customer → address → city` to find where each paying customer lives, then added up the revenue per city with `SUM`.

---

## Bonus: Which Actor Earned the Most Revenue?

`actor` and `payment` are not directly connected, so we need tables in the middle.

**Think of it like this:**
- An **actor** works in films → `film_actor`
- A film has DVD copies in the shop → `inventory`
- A DVD copy gets rented → `rental`
- A rental gets paid for → `payment`

**Shortest path:**
```
actor → film_actor → inventory → rental → payment
```
We skip the `film` table because `film_actor` and `inventory` both already have `film_id`, so they can connect directly.

```sql
SELECT a.first_name, a.last_name, SUM(p.amount) AS total_revenue
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN inventory i   ON fa.film_id = i.film_id
JOIN rental r      ON i.inventory_id = r.inventory_id
JOIN payment p     ON r.rental_id = p.rental_id
GROUP BY a.actor_id, a.first_name, a.last_name
ORDER BY total_revenue DESC
LIMIT 1;
```

---

## Business Insights
1. **Sports** is the top category. It has the most films and the highest revenue.
2. **Most customers are regulars.** The majority have rented more than 20 films.
3. **A few customers spend the most.** The top 10 customers spend much more than average, so a loyalty program could help keep them.