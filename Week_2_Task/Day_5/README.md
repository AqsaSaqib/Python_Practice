# AFL Match Context Integration

## Overview
This task enriches the **Round-by-Round Player Performance dataset** with match context from the **Team Match dataset**. The added context includes `home_away`, `venue`, and `crowd`, allowing player performance to be analyzed in relation to match conditions.

## Datasets
* `Players_round_by_round_stat_cleaned.csv` — Contains player-level performance statistics.
* `Team_Matches_Cleaned.csv` — Contains team-level match information and context.

## Tasks Performed

### 1. Relationship Discovery
Common fields between both datasets were identified. A composite merge key was selected:
**`team + round + year + match_date`**
A composite key was required to correctly identify the specific team match associated with each player record.

### 2. Context Enrichment
The two datasets were merged using a **left join**. The following match-context columns were added to the player dataset:
* `home_away`
* `venue`
* `crowd`
Team names were standardized before merging to handle naming differences such as `W. Bulldogs` and `Western Bulldogs`.

### 3. Merge Validation
The merged dataset was checked for:
* Unmatched records
* Duplicate records
* Changes in the number of player records
* Missing match-context values
The original player dataset contained **274,079 records**, and the record count was maintained after enrichment.

### 4. Contextual Analysis
The enriched dataset was used to examine:
* Average fantasy points at home versus away
* The relationship between crowd size and fantasy points
* Average player performance across venues
Home games had an average of approximately **66.49 fantasy points**, compared with **64.00 away**. The crowd-to-fantasy-points correlation was approximately **0.015**, indicating a very weak linear relationship.

### 5. Data Quality Report
The integration process documented the merge key, merge strategy, naming inconsistencies, validation results, and assumptions made during the integration.

## Tools Used

* Python
* Pandas
* Google Colab

## Output
The final output is an enriched player dataset containing the original player statistics along with **home/away status, venue, and crowd information**.
