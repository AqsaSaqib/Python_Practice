# Week 2 Day 1 – Data Cleaning & Validation

## Project Overview
This project focuses on cleaning, validating, and merging two datasets: **Players Info** and **Seasonal Stats** using Python and Pandas.

## Objectives
* Clean and standardize the datasets
* Handle missing values
* Remove duplicate records
* Convert columns to appropriate data types
* Check unmatched `player_id` values
* Merge both datasets for further analysis

## Data Cleaning
For **Players Info**, duplicate records and unnecessary/missing IDs were handled, and date columns were converted to the correct format.
For **Seasonal Stats**, missing `player_id` values and duplicate records were removed. Missing numerical values were filled using the **median** of each column.

## Validation
After cleaning, the datasets were checked for:
* Missing values
* Duplicate records
* Duplicate player IDs
* Unmatched `player_id` values
* Row counts before and after cleaning

## Results
* Players Info: **2,848 → 2,843 rows**
* Seasonal Stats: **25,491 → 25,471 rows**
* Final merged dataset: **25,072 rows × 69 columns**
* Missing values after cleaning: **0**
* Duplicate rows after cleaning: **0**

## Technologies
**Python | Pandas | Google Colab**

## Files

* `Week2_Day_1_Task.ipynb` – Data cleaning and validation notebook
* `merged_players.csv` – Final merged dataset
* `README.md` – Project documentation

## Conclusion
The datasets were successfully cleaned, validated, and merged using `player_id`. The final dataset is ready for further analysis and visualization.
