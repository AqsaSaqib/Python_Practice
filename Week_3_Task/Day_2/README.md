# SQL JOINs Practice: DVD Rental Database

Week 3, Day 2 task. Practicing **SQL JOINs** in PostgreSQL using the [DVD Rental sample database](https://neon.com/postgresql/getting-started/sample-database).
The database is for a shop that rents out DVDs. A customer rents a DVD copy of a film and makes a payment.

## Files

| File | What's inside |
|---|---|
| `SQL_Joins.sql` | All JOIN queries for the challenges |
| `Relationship_Discovery.md` | Primary Keys, Foreign Keys, Relationship between columns |
| `Concept_Check.md` | Answers to concept questions |
| `Screenshots/` | Query outputs from PostgreSQL |

---

## What is a JOIN?
A JOIN connects two tables using a column they both have. For example, `customer` and `address` both have `address_id`, so we join them `ON c.address_id = a.address_id`.

## How Each Question Was Solved

**1. Customer Details**

Joined `customer → address → city → country` to get the customer's name, email, city, and country.

**2. Payment Details**

Joined `payment → customer` for customer names and `payment → rental → inventory → film` to find the rented film and payment amount.

**3. Top 10 Customers**

Joined `customer → payment`, used `SUM()` to calculate total spending, and used `ORDER BY` and `LIMIT 10` to find the top 10 customers.

**4. Films and Categories**

Joined `film → film_category → category` to find each film's category and rental rate.

**5. Films and Actors**

Joined `film → film_actor → actor` to find the actors in each film.

**6. Films in Each Category**

Joined `category → film_category` and used `COUNT()` to count the films in each category.

**7. Revenue by Category**

Joined `payment → rental → inventory → film_category → category` and used `SUM()` to calculate revenue for each category.

**8. Customers with 20+ Rentals**

Joined `customer → rental`, counted rentals with `COUNT()`, and used `HAVING` to find customers with more than 20 rentals.

**9. Revenue by City**

Joined `payment → customer → address → city` and used `SUM()` to calculate rental revenue for each city.


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

## Business Insights
1. **Sports** is the top category. It has the most films and the highest revenue.
2. **Most customers are regulars.** The majority have rented more than 20 films.
3. **A few customers spend the most.** The top 10 customers spend much more than average, so a loyalty program could help keep them.