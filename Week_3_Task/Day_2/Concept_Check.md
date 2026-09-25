## Database Concepts

### 1. Why do relational databases split data into multiple tables?
Relational databases split data into multiple tables to keep the data organized and reduce duplicate information. Each table usually stores information about one specific thing.

### 2. Difference between INNER JOIN and LEFT JOIN
* INNER JOIN: Returns only the records that have a match in both tables.
* LEFT JOIN: Returns all records from the left table and the matching records from the right table. If there is no match, it shows NULL.

### 3. When would you use a FULL OUTER JOIN?
A FULL OUTER JOIN is used when we want to see all records from both tables, including records that do not have a match in the other table.

### 4. Why are Primary Keys and Foreign Keys important?
A Primary Key uniquely identifies each record in a table. A Foreign Key connects one table to another and helps maintain relationships between related data.

### 5. Explain normalization in simple words.
Normalization means organizing data into separate, related tables to reduce duplicate data and make the database easier to manage and update.

### 6. What is an ER Diagram?
An ER (Entity-Relationship) Diagram is a visual representation of a database. It shows the tables, their fields, and how different tables are connected to each other.

### 7. What happens if a JOIN condition is incorrect?
If a JOIN condition is incorrect, the query may return wrong, duplicate, or missing records. Therefore, the JOIN condition should correctly match the related columns between tables.
