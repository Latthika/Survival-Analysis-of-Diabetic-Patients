# Survival Analysis of Diabetic Patients

## Overview

This project investigates the **impact of age on the long-term survival of diabetic patients** who underwent laser coagulation treatment for diabetic retinopathy. Using survival analysis techniques, the study evaluates survival probabilities for two age groups: "young" and "old."

## Features
- **Kaplan-Meier Estimation**: Survival probabilities calculated and visualized for different age groups.
- **Log-Rank Test**: Statistical comparison of survival distributions between age groups.
- **Cox Proportional Hazards Model**: Estimation of hazard ratios to identify significant predictors of survival.

## Dataset
The dataset includes information on diabetic patients with the following key variables:
- **time**: Follow-up time (days).
- **status**: Event indicator (1 = event occurred, 0 = censored).
- **laser**: Treatment group (1 = treated, 0 = control).
- **age**: Age of the patient.
- **eye**: Which eye was treated (1 = left, 2 = right).
- **risk**: Risk score (continuous variable).

## Key Insights
- Survival probabilities decline over time for both age groups, with slightly better outcomes for younger patients.
- Statistical tests indicate **no significant difference** in survival between "young" and "old" groups.
- The Cox model shows that age group is **not a significant predictor** of survival outcomes.

## Methodology
### Kaplan-Meier Estimation
- Visualizes survival probabilities over time.
- Highlights trends in survival for age groups.

### Log-Rank Test
- Compares survival distributions between "young" and "old" age groups.
- Results indicate no statistically significant difference (p-value = 0.63).

### Cox Proportional Hazards Model
- Estimates the impact of age on hazard rates.
- Confirms that age is not a significant predictor (p-value = 0.628).

## Outputs
- Kaplan-Meier survival curves with risk tables.
- Log-rank test results: Chi-squared statistic = 0.2, p-value = 0.6.
- Cox model results:
  - Coefficient: 0.07788
  - Hazard Ratio: 1.081
  - p-value: 0.628
