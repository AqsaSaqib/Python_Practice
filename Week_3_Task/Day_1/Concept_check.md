# SQL Foundations - Concept Check

## 1. What problem does SQL solve that CSV files cannot?
SQL helps us easily search, filter, update, and analyze large amounts of data. CSV files are mainly used to store data and are harder to manage when the data becomes large.

## 2. What is the difference between a database table and a spreadsheet?
A **database table** stores data in rows and columns and can be managed using SQL.
A **spreadsheet** like Excel is mainly used for entering, organizing, and calculating data.

## 3. What is a Primary Key?
A Primary Key is a column that uniquely identifies each row in a table. Example: `Customer_ID`

## 4. What is a Foreign Key?
A Foreign Key is a column that connects one table to another table.It usually refers to the Primary Key of another table.

## 5. What is the difference between WHERE and HAVING?
* WHERE filters rows before grouping.
* HAVING filters groups after `GROUP BY`.
**Simple rule:**
`WHERE` → filters rows
`HAVING` → filters groups

## 6. What is the difference between ORDER BY and GROUP BY?
* ORDER BY is used to sort data.
* GROUP BY is used to group similar data.

## 7. What does DISTINCT do?
`DISTINCT` shows only **unique values** and removes duplicates.
Example:
```sql
SELECT DISTINCT "Category"
FROM superstore_sales;
```

## 8. When should you use LIMIT?
`LIMIT` is used when we want to see **only a specific number of rows**.
Example:
```sql
SELECT *
FROM superstore_sales
LIMIT 10;
```
This shows only 10 rows.

## 9. What are aggregate functions?
Aggregate functions are used to **calculate values from data**.
Common examples:
* `COUNT()` → counts data
* `SUM()` → adds values
* `AVG()` → finds average
* `MIN()` → finds smallest value
* `MAX()` → finds largest value

## 10. Why do Data Scientists prefer databases over Excel for large datasets?
Databases are better for large datasets because they can store and process large amounts of data efficiently.SQL also makes it easier to search, filter, group, and analyze data.