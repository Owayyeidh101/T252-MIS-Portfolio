# ISE291 Data Science Project — Telco Customer Churn Analysis

## Project Overview

This project was completed as part of the ISE 291 – Introduction to Data Science course. The objective is to analyze customer behavior in a telecommunications company and develop predictive models to identify customers who are likely to churn.

The project follows the full data analytics lifecycle, including problem definition, data preparation, exploratory data analysis, model development, evaluation, and interpretation of results.

---

## Objectives

* Identify key factors influencing customer churn
* Develop classification models to predict churn
* Provide data-driven recommendations to improve customer retention

---

## Dataset

* **Dataset Name:** Telco Customer Churn (IBM Sample Dataset)
* **Source:** Kaggle
* **Observations:** 7,043 customers
* **Variables:** 21 features
* **Target Variable:** Churn (Yes/No)

The dataset contains a mix of categorical and numerical variables, including demographic information, service usage, and billing data.

---

## Data Preparation

The dataset was cleaned and prepared to ensure suitability for analysis and modeling. Key steps included:

* Handling missing values in the TotalCharges variable
* Converting data types for consistency
* Encoding categorical variables
* Removing non-informative features such as customerID

---

## Exploratory Data Analysis

Exploratory analysis was conducted to understand patterns and relationships within the data. Key findings include:

* Customers with month-to-month contracts exhibit higher churn rates
* Higher monthly charges are associated with increased churn
* Customers with shorter tenure are more likely to leave
* The absence of support-related services (e.g., Tech Support, Online Security) is linked to higher churn

---

## Modeling Approach

Three classification models were implemented:

* Logistic Regression
* Decision Tree
* Random Forest

Each model was trained and evaluated using standard performance metrics.

---

## Model Performance

| Model               | Accuracy | Precision | Recall | F1 Score |
| ------------------- | -------- | --------- | ------ | -------- |
| Logistic Regression | ~80.5%   | 0.66      | 0.56   | 0.60     |
| Decision Tree       | ~72.1%   | 0.48      | 0.49   | 0.48     |
| Random Forest       | ~78.6%   | 0.63      | 0.49   | 0.55     |

### Final Model Selection

Logistic Regression was selected as the final model due to its superior overall performance and balanced precision-recall trade-off.

---

## Key Findings

* Contract type is the most significant predictor of churn
* Month-to-month customers represent the highest-risk group
* High monthly charges and low tenure are strongly associated with churn
* Support and security services reduce the likelihood of customer attrition

---

## Business Recommendations

* Encourage long-term contracts through targeted incentives
* Identify and engage high-risk customers proactively
* Enhance support services to improve customer satisfaction and retention

---

## Tools and Technologies

* Python (Pandas, NumPy)
* Scikit-learn
* Matplotlib and Seaborn
* Google Colab

---

## Project Structure

```
ISE291-data-science/
├─ Milestone 1 - Proposal/
├─ Milestone 2 - Data Cleaning/
├─ Milestone 3 - EDA/
├─ data/
├─ final-project/
└─ README.md
```

---

## Team Contributions

* Majed AlOwayyeidh — Project coordination, integration of milestones, and modeling workflow
* Talal AlDakheel — Alignment of business objectives with model evaluation
* Ahmed AlSaad — Data preprocessing and model implementation
* Abdullah Alluqmani — Interpretation of results and analytical insights
* Rakan AlShalan — Report formatting and submission preparation

---

## Conclusion

This project demonstrates the application of data science techniques to a real-world business problem. The results show that predictive modeling can provide valuable insights into customer behavior and support decision-making processes aimed at reducing churn and improving retention.
