# Week 4 — Final Validation and Project Documentation

## FinTrust Financial Intelligence & Digital Banking Support Solution

**Programme:** AnalystLab Africa Data Analytics Internship
**Project:** FinTrust Digital Bank
**Phase:** Week 4 — Final Validation, Testing and Documentation
**Tools:** Excel, SQL, Python, Pandas, NumPy, Matplotlib, Seaborn and Power BI

## 1. Project Overview

The FinTrust Digital Bank project focuses on analysing customer and transaction data to understand transaction performance, customer activity, transaction channels, transaction outcomes and risk-review patterns.

The project follows a business-focused analytics workflow, beginning with business understanding and data assessment, followed by data analysis, SQL querying, dashboard development, validation and final documentation.

The Week 4 objective is to review the completed work, verify the reliability of the analysis, test the final Power BI dashboard, validate key business findings and prepare the final project deliverables.

## 2. Project Objectives

* Assess the quality and suitability of the customer and transaction datasets.
* Analyse transaction volumes, values, outcomes and trends.
* Evaluate customer activity and transaction channels.
* Compare domestic and international transaction patterns.
* Examine transactions flagged for risk review.
* Develop and validate business insights and recommendations.
* Present the findings through a Power BI dashboard and supporting documentation.

## 3. Work Completed Across the Project

### Week 1 — Business Understanding and Data Assessment

* Reviewed the customer and transaction datasets.
* Identified the relationship between customer records and transaction records using `Customer_ID`.
* Conducted initial data quality checks.
* Identified missing values in selected fields, including `Device_Type` and `Location`.
* Defined business questions, proposed KPIs and planned the dashboard layout.
* Documented initial assumptions, risks and limitations.

### Weeks 2–3 — Analysis, SQL and Dashboard Development

* Continued data review and exploratory analysis.
* Used SQL to answer business questions involving transaction performance, monthly trends, channels, transaction types and risk-review patterns.
* Used Python for data analysis and visual exploration.
* Developed Power BI visuals and KPI cards to communicate the analysis.
* Prepared business findings and management recommendations based on the earlier analysis.

### Week 4 — Final Validation and Testing

* Reviewed the work completed in Weeks 1–3.
* Completed the final data quality checks.
* Completed SQL and Python validation.
* Completed testing of the final Power BI dashboard.
* Prepared final validation evidence and project documentation.

The final business findings validation register should record the actual result and conclusion for each finding, including any corrections and re-testing performed.

## 4. Data Overview

The project initially covered:

| Dataset          | Previously documented size | Purpose                                                                   |
| ---------------- | -------------------------: | ------------------------------------------------------------------------- |
| Customer data    |              1,500 records | Customer attributes and segmentation                                      |
| Transaction data |             12,000 records | Transaction activity, values, channels, outcomes and risk-review analysis |

The datasets are related through `Customer_ID`, with one customer potentially associated with multiple transactions.

## 5. Key Metrics and Previously Reported Results

The following figures were reported during the earlier analysis. They should be read alongside the final validation evidence.

| Metric                              |       Previously reported result |
| ----------------------------------- | -------------------------------: |
| Total transactions                  |                           12,000 |
| Overall transaction success rate    |                           90.47% |
| Total transaction value             | Approximately NGN 560.48 million |
| Risk-review transaction rate        |                           19.60% |
| January transaction success rate    |                           90.01% |
| February transaction success rate   |                           90.89% |
| March transaction success rate      |                           90.54% |
| ATM transaction success rate        |                           91.70% |
| Mobile App transaction success rate |                           89.75% |

These figures are historical analysis results, not a claim that every figure has independently passed final validation. Refer to the supporting validation documentation for the recorded outcomes.

## 6. Final Validation Activities

### Data Quality Review

The final review covered missing values, duplicates, data types, transaction dates, customer identifiers, dataset relationships and readiness for KPI calculations.

Earlier checks identified 96 missing values in `Device_Type` and 96 in `Location`. Their treatment should be documented in the final data quality review.

### SQL and Python Validation

The final SQL queries and Python analysis were reviewed and validated. The supporting documentation should identify the important calculations checked, the outputs obtained and any discrepancies or corrections.

### Power BI Dashboard Testing

The final dashboard testing covered:

* KPI calculations
* Monthly transaction trends
* Channel performance
* Domestic and international transactions
* Risk-review analysis
* Slicer functionality
* Chart interactions
* Labels, formatting, clarity and usability

The detailed testing document should retain the actual pass/fail outcomes and evidence.

## 7. Business Insights and Recommendations

The earlier analysis highlighted several areas for management attention:

1. Overall transaction success and failure patterns.
2. Differences in monthly transaction success rates.
3. Differences in performance across transaction channels.
4. The share of transaction value associated with risk-review flags.
5. Differences in risk-review patterns across transaction types.
6. Differences between domestic and international transaction activity.

Final recommendations should be tied to the validated evidence. Suggested actions may include monitoring channel performance, investigating failed transactions, reviewing high-value flagged activity and tracking monthly operational indicators.

## 8. Tools and Technologies

* **Excel:** Initial data inspection and quality checks.
* **SQL:** Business queries, aggregations, joins and transaction analysis.
* **Python:** Data processing, analysis and visual exploration.
* **Power BI:** KPI reporting, dashboard visuals and interactive analysis.
* **GitHub:** Versioned project files, documentation and validation evidence.

## 9. Assumptions and Limitations

* The datasets represent the scope of the supplied project data and may not represent real-world banking activity.
* Risk-review flags are educational indicators for analysis, not proof of fraud or criminal activity.
* A flagged transaction should not automatically be treated as fraudulent.
* Observed differences between channels or transaction types do not, by themselves, establish the cause of those differences.
* Findings and recommendations are limited to the available fields, records and analysis period.
* Previously reported metrics must be interpreted alongside the final validation results.

## 10. Deliverables

* Final project report
* Data quality review
* SQL scripts
* Python notebook
* Final Power BI dashboard
* KPI definitions and calculation notes
* Business findings and recommendations
* SQL/Python validation documentation
* Power BI testing documentation
* Business findings validation register
* Screenshots and other validation evidence
* Final project presentation

## 11. Conclusion

The FinTrust project brings together data quality assessment, SQL analysis, Python-based exploration, business intelligence reporting and final validation. The Week 4 objective is to ensure that the final outputs are consistent, clearly documented, supported by evidence and suitable for communicating data-driven recommendations.

This project demonstrates an end-to-end analytics workflow, from understanding a business problem to analysing data, communicating findings and checking the reliability of the final outputs.

