# Pandas Cleaning, Transforming & Reshaping Data

# Concepts Covered
During this task, I practiced important Pandas concepts, including:
* Handling missing values using `.dropna()` and `.fillna()`
* Fixing incorrect data types
* Removing duplicate records
* Creating new columns using `.apply()` and vectorized operations
* Using `groupby()` and `agg()` for data summaries
* Reshaping data using `pivot_table()`
* Merging DataFrames using different joins

# Implementation

# About the Project
In this project, I used **Python Pandas** to clean, transform, and analyze the Superstore sales dataset. The main purpose was to handle messy data and create useful summary tables.
I worked with sales, profit, discount, products, categories, sub-categories, states, and regions.

# Main Tasks
1. Identify and handle missing values.
2. Fix incorrect data types.
3. Remove duplicate records.
4. Create two derived columns.
5. Create a summary table using `groupby()` and `agg()`.
6. Merge the dataset with a manually created DataFrame.
7. Add extra context using category labels.

# Dataset
The dataset used in this project is **Superstore.csv**. It contains information about customer orders, products, sales, discounts, profits, categories, sub-categories, states, and regions.

# Tools Used
* Python
* Pandas
* Google Colab

# Main Pandas Functions Used
```python
pd.read_csv()
df.isnull().sum()
df.dropna()
df.fillna()
df.astype()
df.drop_duplicates()
df.apply()
df.groupby()
df.agg()
df.pivot_table()
df.merge()
```

# Learning Outcomes
This project helped me understand how to **clean, transform, reshape, and merge real-world data using Pandas**. I also learned how to handle missing values, incorrect data types, duplicates, and create useful summary tables.
