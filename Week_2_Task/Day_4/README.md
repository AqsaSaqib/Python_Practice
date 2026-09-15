# AFL Player Performance Analysis

## Overview
This project analyses AFL player and team performance using 2024 seasonal and round-by-round statistics.
The analysis focuses on identifying valuable players, consistent performers, performance trends, team quality, and potential recruitment targets.

## Dataset
Three datasets were used:
* `cleaned_players_info.csv` – Player information
* `cleaned_Seasonal_Stats.csv` – Seasonal player statistics
* `Players_round_by_round_stat_cleaned.csv` – Round-by-round performance

## Tasks Performed
1. **Data Loading & Quality Check**
   * Loaded datasets using Pandas
   * Checked missing values, duplicates, data types and available years

2. **Data Merging**
   * Combined player information with seasonal and round-by-round statistics using `player_id`

3. **2024 Season Analysis**
   * Selected 2024 regular-season data
   * Excluded finals from seasonal analysis

4. **Feature Engineering**
   * Created metrics such as:
     * Goals Per Game
     * Fantasy Per Game
     * Disposal Efficiency
     * Tackles Per Game
     * Clearances Per Game
     * Score Per Game

5. **Top 10 Valuable Players**
   * Created a weighted Performance Index using multiple player statistics

6. **Player Consistency**
   * Compared average fantasy points and variation in performance

7. **Performance Trends**
   * Compared first-half and second-half fantasy performance

8. **Team Performance**
   * Ranked teams using player performance, fantasy, efficiency and scoring metrics

9. **Recruitment Analysis**
   * Combined performance, consistency and trend to identify the top 5 recruitment candidates

10. **Business Insights**
* Developed data-driven insights and recommendations for player evaluation and recruitment

## Tools Used
* Python
* Pandas
* Matplotlib
* Seaborn
* Google Colab

## Learning Outcome
The project provides a data-driven approach to AFL player evaluation by considering **performance, consistency and improvement trends**, rather than relying on a single statistic.

The analysis can support better decisions in **player recruitment, performance monitoring and team management**.
