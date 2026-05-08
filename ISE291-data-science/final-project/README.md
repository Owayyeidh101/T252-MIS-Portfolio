# ISE 291 Final Project: Telco Customer Churn Prediction

## Group Members

| Name | ID | Contribution |
| --- | --- | --- |
| **Majed AlOwayyeidh** | 202467820 | Integrated milestones (M1–M3), organized the final report, and coordinated modeling workflow. |
| **Talal AlDakheel** | 202467400 | Supported model evaluation and ensured consistency between business objectives and results. |
| **Ahmed AlSaad** | 202432980 | Implemented preprocessing pipeline and contributed to model building. |
| **Abdullah Alluqmani** | 202257720 | Interpreted model results in relation to EDA findings and feature-level analysis. |
| **Rakan AlShalan** | 202351430 | Reviewed report structure and ensured compliance with rubric requirements. |

---

## Project Overview

The objective of this project is to analyze customer churn behavior in a telecom company and build classification models to predict which customers are likely to leave.

## Data Source
The dataset used in this project is the **Telco Customer Churn** dataset, which is a collection of IBM Sample Data. It contains information about a fictional telecom company that provided home phone and internet services to 7,043 customers in California.

* **Source:** [Kaggle - Telco Customer Churn](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)
* **Format:** CSV
* **Size:** 7,043 records, 21 variables

---

## Project Milestones

### Milestone 1: Project Proposal

* **Problem**: Customer churn significantly impacts retention and profitability in the telecom industry.
* **Objective**: Identify key factors driving churn and build a predictive model for high-risk customers.
* **Hypotheses**:
* Month-to-month contracts increase churn.
* Higher monthly charges lead to higher churn.
* Lack of tech support or security services increases churn.



### Milestone 2: Data Cleaning

* **Dataset**: IBM Sample Data (7,043 records, 21 variables).
* **Key Steps**:
* Converted `TotalCharges` to a numeric type.
* Imputed missing values based on tenure and contract type.
* Standardized categorical values and converted binary fields (Yes/No) to categorical types.



### Milestone 3: Exploratory Data Analysis (EDA)

* Performed univariate and bivariate analysis to identify relationships between variables like contract type and churn behavior.
* Generated correlation insights to pinpoint major churn drivers.

### Milestone 4: Final Modeling & Evaluation

* **Models Implemented**: Logistic Regression, Decision Tree, and Random Forest.
* **Preprocessing**: Applied a pipeline with `StandardScaler` for numerical data and `OneHotEncoder` for categorical data.
* **Results**:
* **Logistic Regression** was the best-performing model with an accuracy of approximately **80.6%**.
* **Decision Tree** Accuracy: ~72.3%.
* **Random Forest** Accuracy: ~78.6%.



---

## Key Findings & Recommendations

* **Top Churn Drivers**: Fiber optic internet services, month-to-month contracts, and high total charges are the strongest indicators of churn.
* **Contract Influence**: Customers with short-term (month-to-month) contracts are significantly more likely to leave.
* **Recommendations**:
* Offer incentives for customers to switch to long-term contracts.
* Monitor and target high-risk customers (those with high monthly charges) with personalized retention strategies.



---

## Operationalization

To implement this model in a real-world setting, it can be integrated into the company’s CRM system to regularly generate risk scores for marketing teams. Challenges include the need for continuous data updates and monitoring for model drift over time.
