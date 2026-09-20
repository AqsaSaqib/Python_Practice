# **AFL Player Performance Analysis**
## **Overview**
This project analyses AFL player and team performance using regular-season player statistics from **2020 to 2025**.
The analysis focuses on identifying valuable players, consistent performers, performance trends, team performance, and potential recruitment candidates.

## **Dataset**
Three datasets were used:
* `Players_round_by_round_stat_raw.csv` – Raw round-by-round player statistics
* `Players_round_by_round_stat_cleaned.csv` – Cleaned round-by-round player statistics
* `merged_players.csv` – Merged player and seasonal performance data

## **Tasks Performed**
1. **Data Loading & Quality Check**
   * Loaded the raw dataset using Pandas
   * Checked dataset shape, rows, columns and data types
   * Checked missing values and duplicate records

2. **Data Cleaning**
   * Removed duplicate rows
   * Removed the `score` column
   * Filled missing numerical match statistics with 0
   * Converted statistical columns to integer format
   * Converted date columns into datetime format
   * Verified missing values and duplicates after cleaning

3. **Data Preparation**
   * Loaded the cleaned round-by-round and merged player datasets
   * Converted relevant columns into appropriate data types
   * Selected regular-season data from **2020 to 2025**
   * Excluded finals from the team performance analysis

4. **Feature Engineering**
   * Created metrics such as:
   * Goals Per Game
   * Disposals Per Game
   * Tackles Per Game
   * Clearances Per Game
   * Fantasy Points Per Game
   * Contested Possessions Per Game

5. **Top 10 Valuable Players**
   * Created a Performance Index using multiple player statistics
   * Used fantasy points, disposals, goals, tackles, clearances and contested possessions
   * Ranked players based on their overall Performance Index
   * Identified the top 10 most valuable players

6. **Player Consistency**
   * Calculated average fantasy points and standard deviation
   * Used the Coefficient of Variation (CV) to measure consistency
   * Considered players with at least 30 games
   * Identified the 10 most consistent players

7. **Performance Trends**
   * Divided rounds into first-half and second-half performance
   * Compared average fantasy points between both periods
   * Calculated Performance Change
   * Identified the most improved and most declined players

8. **Team Performance**
   * Analysed team performance from 2020 to 2025
   * Excluded finals from the analysis
   * Compared teams using average fantasy points, disposals, clearances, goals and tackles
   * Ranked teams according to average player fantasy performance

9. **Recruitment Analysis**
   * Combined player performance, consistency and performance improvement
   * Calculated a Recruitment Score
   * Filtered players with at least 30 games
   * Identified the top 5 recruitment candidates

10. **Data Visualizations**
* Created visualizations for:
* Top 10 valuable players
* Most consistent players
* Most improved players
* Most declined players
* Team performance ranking
* Top 5 recruitment candidates
* Correlation between per-game metrics
* Distribution of fantasy points per game

11. **Business Insights**
* Developed data-driven insights related to player value, involvement, scoring, defensive contribution, consistency, improvement, team performance and recruitment.

## **Tools Used**
* Python
* Pandas
* Matplotlib
* Seaborn
* Google Colab

## **Learning Outcome**
The project provides a data-driven approach to AFL player evaluation by considering **performance, consistency and improvement trends** across multiple statistics rather than relying on a single statistic.
The analysis demonstrates how player statistics can be used to support **player evaluation, performance monitoring, team comparison and recruitment analysis**.
