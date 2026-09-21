# AFL Player Performance Analysis

## Overview
This project analyses AFL player and team performance using regular-season statistics from **2020 to 2025**. The main focus is to identify valuable players, consistent performers, performance trends, team performance, and potential recruitment candidates.

## Dataset
Three datasets were used:
* `Players_round_by_round_stat_raw.csv` – Raw player statistics
* `Players_round_by_round_stat_cleaned.csv` – Cleaned player statistics
* `merged_players.csv` – Merged player and seasonal data

## Tasks Performed

### Data Loading & Cleaning
* Loaded and checked the raw dataset using Pandas
* Checked rows, columns, data types, missing values, and duplicates
* Removed duplicate records and the unnecessary score column
* Filled missing numerical values with 0
* Converted columns into suitable data types

### Data Preparation
* Loaded the cleaned and merged datasets
* Selected regular-season data from 2020 to 2025
* Excluded finals from team performance analysis

### Feature Engineering
Created different performance metrics:
* Goals Per Game
* Disposals Per Game
* Tackles Per Game
* Clearances Per Game
* Fantasy Points Per Game
* Contested Possessions Per Game

### Top 10 Valuable Players
Created a **Performance Index** using fantasy points, disposals, goals, tackles, clearances, and contested possessions to identify the top 10 valuable players.

### Player Consistency
Used average fantasy points, standard deviation, and **Coefficient of Variation (CV)** to measure consistency. Players with at least 30 games were considered, and the 10 most consistent players were identified.

### Performance Trends
Compared player fantasy points between the first and second half of the season to find the **most improved and most declined players**.

### Team Performance
Compared teams from 2020–2025 using average fantasy points, disposals, clearances, goals, and tackles. Finals were excluded from this analysis.

### Recruitment Analysis
Combined player performance, consistency, and improvement into a **Recruitment Score**. Players with at least 30 games were considered, and the top 5 recruitment candidates were identified.

## Data Visualizations
Created visualizations for:
* Top 10 valuable players
* Most consistent players
* Most improved and declined players
* Team performance ranking
* Top 5 recruitment candidates
* Correlation between performance metrics
* Fantasy points distribution

## Business Insights
The analysis provided insights into player value, consistency, scoring, defensive contribution, improvement, team performance, and recruitment opportunities.

## Tools Used
* Python
* Pandas
* Matplotlib
* Seaborn
* Google Colab

## Learning Outcome
This project helped me learn how to clean, analyse, and visualize real-world sports data. It also showed how multiple performance metrics can be used together for player evaluation, team comparison, and recruitment analysis.
