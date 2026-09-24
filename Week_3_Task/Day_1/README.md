# SQL Foundations – Superstore Sales

## Overview
This project uses the **Superstore Sales Dataset** to practice basic SQL and PostgreSQL concepts.
The dataset was imported into PostgreSQL in a table named:
`superstore_sales`

## Dataset
**Source:** [Kaggle – Superstore Sales Dataset](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)

## Tools Used
* PostgreSQL
* pgAdmin
* SQL

## Setup
1. Download the dataset from Kaggle.
2. Create a PostgreSQL database.
3. Create a table named `superstore_sales`.
4. Import the CSV data into the table.
5. Run basic SQL queries to check the data and table structure.

### Example Queries
```sql
SELECT COUNT(*) FROM superstore_sales;

SELECT * FROM superstore_sales LIMIT 10;

SELECT *
FROM information_schema.columns
WHERE table_name = 'superstore_sales';
```

## Files
* `README.md` – Project setup and information
* `concept_check.md` – SQL concept answers
* Screenshots – Database, table, queries, and table structure
