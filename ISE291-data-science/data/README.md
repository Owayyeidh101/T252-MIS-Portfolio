
---

## 2. `data/README.md`

```md
# Dataset – Telco Customer Churn

## Overview
This project uses the **Telco Customer Churn dataset** (IBM sample dataset) to analyze customer behavior and predict churn.

---

## Files

### `source-data.csv`
- Original raw dataset
- Contains ~7,000 customer records
- Includes both categorical and numerical variables

### `cleaned-data.xlsx`
- Processed dataset after data cleaning
- Missing values handled
- Data types corrected
- Ready for analysis and modeling

---

## Key Variables
- `tenure` – Customer duration with company
- `MonthlyCharges` – Monthly billing amount
- `TotalCharges` – Total spending (cleaned)
- `Contract` – Contract type
- `InternetService` – Type of service
- `Churn` – Target variable (Yes/No)

---

## Notes
- Cleaning steps are documented in:
  → `Milestone 2 - Data Cleaning/cleaning.ipynb`
- This dataset is used across all project stages (EDA, modeling, final analysis)
