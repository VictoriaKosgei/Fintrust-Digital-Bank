# FinTrust Digital Bank — Final Project Report

## Executive Summary

The FinTrust Digital Bank project applies data analytics techniques to customer and transaction datasets to assess data quality, analyze transaction performance, explore customer behavior, examine channels and transaction scope, and identify risk-review patterns.

The project combines Excel, MySQL, Python, and Power BI to produce analytical results, interactive dashboards, business findings, and management recommendations.

## Data and Methods

The analysis used 1,500 customer records and 12,000 transaction records. The datasets were related through `Customer_ID`.

Excel supported preliminary data assessment and preparation. MySQL was used for structured queries and business analysis. Python supported exploratory analysis and visualization. Power BI presented KPIs and interactive business analysis.

## Key Results

* Total customers: 1,500.
* Total transactions: 12,000.
* Total transaction value: NGN 560,477,354.85.
* Average transaction value: NGN 46,706.45.
* Successful transactions: 10,856.
* Transaction success rate: 90.47%.
* Risk-review rate: 19.60%.
* Domestic transactions: 11,520.
* International transactions: 480.

## Business Findings

The analysis identified differences in channel success rates, a concentration of transaction value in domestic activity, meaningful transaction value associated with risk-review flags, and changes in monthly transaction success rates.

The findings and recommended actions are documented in `Part-D-Final-Business-Insights/Week4_Final_Business_Insights.md`.

## Validation

The major KPI calculations were independently checked against the source CSV datasets. The eight SQL analyses were reported as working after a date-time conversion correction, and the Python notebook ran after a kernel restart.

The final Power BI validation report should record the actual results of the dashboard checks before the overall project is described as fully validated.

## Limitations

The dataset is educational, risk-review flags do not establish fraud, and observed patterns do not independently establish causation. The monthly comparison covers three months. Further investigation is needed before operational recommendations are implemented.

## Conclusion

The project demonstrates a complete business analytics workflow from data assessment and analysis through dashboard development, validation, and business communication. The final repository documents the work completed, analytical results, recommendations, and limitations.
