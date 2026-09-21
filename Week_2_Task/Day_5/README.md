# **AFL Player and Match Context Analysis**

## **Overview**
This project combines AFL player performance data with team match information.
The main aim is to see how match factors like **home or away games, crowd size, and venue** are related to player performance.

## **Dataset**
Three datasets were used:
* `Team_Matches_Raw.csv` – Raw team match data
* `Team_Matches_Cleaned.csv` – Cleaned team match data
* `Players_round_by_round_stat_cleaned.csv` – Cleaned player statistics

## **Tasks Performed**

1. **Data Loading & Checking**
   * Loaded the datasets using Pandas
   * Checked rows and columns
   * Checked data types
   * Checked missing values and duplicates

2. **Data Cleaning**
   * Converted `match_date` into the correct date format
   * Converted `crowd` into numeric format
   * Removed duplicate records
   * Filled missing crowd values using the median

3. **Saving Cleaned Data**
   * Saved the cleaned match data as `Team_Matches_Cleaned.csv`

4. **Finding Common Data**
   * Loaded player and match datasets
   * Found common columns
   * Standardized team names
   * Changed `W. Bulldogs` to `Western Bulldogs`
   * Renamed `team_name` to `team`
   * Used team, round, year, and match date as merge keys

5. **Merging Data**
   * Matched the player data with match data
   * Added home/away, venue, and crowd information
   * Used a left merge to keep all player records

6. **Creating Enriched Dataset**
   * Created a new dataset with player and match information
   * Saved it as `Players_Round_By_Round_Enriched.csv`

7. **Merge Checking**
   * Checked missing home/away values
   * Checked missing venue and crowd values
   * Checked duplicate records
   * Compared records before and after merging

8. **Analysis**
   * Compared player fantasy points in home and away games
   * Checked the relationship between crowd size and fantasy points
   * Compared player performance at different venues
   * Found venues with higher average fantasy points

9. **Data Quality Report**
   * Checked duplicate merge keys
   * Checked missing values
   * Checked records before and after merging
   * Documented the merge method

## **Tools Used**
* Python
* Pandas
* Matplotlib
* Seaborn
* Google Colab

## **Learning Outcome**
This project helped me understand how to **clean, combine, and analyse different datasets**.
I learned how match information such as **home/away status, crowd size, and venue** can be added to player performance data to get more useful insights.
