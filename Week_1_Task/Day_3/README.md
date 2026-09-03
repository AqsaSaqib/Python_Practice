# Pandas concepts and Superstore Data Analysis using only Pandas

# Concepts Covered
During this task, I practiced some important Pandas concepts, including:
* Using `.loc[]` and `.iloc[]` to access data
* Finding missing values with `isnull().sum()`
* Understanding the difference between `df.copy()` and `df2 = df`
* Filtering data using multiple conditions
* Using `groupby()` to summarize data
* Sorting results using `sort_values()`
* Selecting specific rows and columns from a DataFrame

# Implementation
# About the Project
In this project, I used **Python Pandas** to explore and analyze the Superstore sales dataset. The main purpose was to understand the data and answer some simple business-related questions using Pandas.
I worked with sales, profit, discount, products, categories, sub-categories, states, and regions to find useful information from the dataset.

# Business Questions
I used Pandas to answer the following questions:
1. Which products are generating the highest profits?
2. Which products are generating less profit?
3. Which Order IDs have a high discount and negative profit?
4. Which products have high sales but negative profit?
5. Which regions have transactions with negative profit?
6. Which states generate the highest profit?
7. Which product and sub-category generate the highest sales?
8. Which category and sub-category transactions are creating a loss?

# Dataset
The dataset used in this project is **Superstore.csv**. It contains information about customer orders, products, sales, discounts, profits, categories, sub-categories, states, and regions.

# Tools Used
- Python
- Pandas
- Google Colab

# Main Pandas Functions Used
Some of the main functions and methods used in this project are:
```python
pd.read_csv()
df.head()
df.shape
df.columns.tolist()
df.dtypes
df.info()
df.isnull().sum()
df.groupby()
df.sort_values()
```

# Learning outcomes
This project helped me understand how Pandas can be used to work with real-world business data. By filtering, grouping, and sorting the Superstore dataset, I was able to find information about profits, sales, discounts, and loss-making transactions.
