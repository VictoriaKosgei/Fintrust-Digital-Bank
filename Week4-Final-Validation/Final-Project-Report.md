# FinTrust Financial Intelligence & Digital Banking Support Solution

## Week 4 — Final Project Report

**Programme:** AnalystLab Africa Data Analytics Internship
**Project Track:** Data Analytics
**Reporting Phase:** Final Validation and Documentation

## 1. Executive Summary

The FinTrust Digital Bank project involved examining customer and transaction data to understand transaction performance, customer activity, channel performance, transaction outcomes and risk-review patterns.

The work progressed from business understanding and data quality assessment to SQL querying, Python analysis, Power BI dashboard development and final validation.

During Week 4, the completed work from Weeks 1–3 was reviewed. Final data quality checks were completed, SQL and Python analyses were validated, and the Power BI dashboard was tested for calculation accuracy, functionality, clarity and usability.

Previously documented analysis reported an overall transaction success rate of 90.47%, a risk-review transaction rate of 19.60% and total transaction value of approximately NGN 560.48 million. These values should be interpreted alongside the final validation records.

The final objective is to provide management with clear, evidence-based insights while documenting the assumptions, limitations and validation procedures supporting the analysis.

## 2. Project Background

Financial institutions process transactions through multiple channels and transaction types. Understanding transaction performance helps management monitor operational outcomes, identify patterns and prioritize further investigation.

The FinTrust project uses customer and transaction datasets to explore business questions concerning transaction volume, transaction value, success rates, channels, domestic and international activity, customer segments and risk-review indicators.

The project is an educational analytics exercise, not a production banking system or a fraud-detection service.

## 3. Project Objectives

1. Assess the quality and suitability of the supplied datasets.
2. Define business questions and relevant performance indicators.
3. Analyse customer and transaction activity.
4. Use SQL and Python to investigate transaction patterns.
5. Develop a Power BI dashboard for communicating the results.
6. Validate the calculations, findings and dashboard outputs.
7. Produce actionable recommendations supported by evidence.
8. Document limitations and final project deliverables.

## 4. Data Description and Relationships

The initial datasets contained 1,500 customer records and 12,000 transaction records.

The datasets were related through `Customer_ID`. A customer can have multiple associated transactions, creating a one-to-many relationship from the customer dataset to the transaction dataset.

The analysis covered customer characteristics, transaction amounts, transaction dates, channels, transaction types, outcomes, domestic and international activity, and risk-review indicators.

## 5. Summary of Work by Week

### 5.1 Week 1 — Business Understanding and Data Assessment

The initial phase focused on understanding the business problem, inspecting the available datasets and planning the analysis.

Activities included:

* Reviewing the customer and transaction datasets.
* Checking dataset structure, completeness and potential quality issues.
* Reviewing the relationship between customers and transactions.
* Defining management questions and potential KPIs.
* Planning the dashboard layout.
* Documenting initial assumptions, risks and limitations.

The initial data quality review identified 96 missing values in `Device_Type` and 96 in `Location`. The final treatment of these missing values is documented separately.

### 5.2 Weeks 2–3 — Data Analysis and Dashboard Development

The analysis phase involved reviewing transaction activity, preparing data for analysis, running SQL queries and conducting exploratory analysis in Python.

Business questions included:

* How many transactions were processed and what was their total value?
* What proportion of transactions succeeded?
* How did transaction performance change over time?
* How did transaction outcomes differ across channels?
* How did domestic and international transactions compare?
* What patterns appeared among transactions flagged for risk review?
* What characteristics were associated with transactions above the overall average amount?

The results were communicated through Python outputs, SQL query results and Power BI dashboard visuals.

### 5.3 Week 4 — Final Validation and Documentation

The final phase focused on reviewing and validating the previous work.

Completed activities included:

* Reviewing the Weeks 1–3 project work.
* Completing final data quality checks.
* Completing SQL and Python validation.
* Testing the final Power BI dashboard.

The final report and supporting validation register should preserve the actual test results, discrepancies, corrections and re-test outcomes.

## 6. KPI Summary

The following metrics were reported in the earlier analysis:

| KPI                              |        Previously reported value |
| -------------------------------- | -------------------------------: |
| Total transactions               |                           12,000 |
| Overall transaction success rate |                           90.47% |
| Total transaction value          | Approximately NGN 560.48 million |
| Risk-review transaction rate     |                           19.60% |
| January success rate             |                           90.01% |
| February success rate            |                           90.89% |
| March success rate               |                           90.54% |
| ATM success rate                 |                           91.70% |
| Mobile App success rate          |                           89.75% |

The final KPI documentation should state the exact numerator, denominator, filters and business definition used for each metric. These earlier figures should not be described as final validated values unless the validation evidence confirms them.

## 7. Final Data Quality Review

The final data quality review covered:

* Missing values
* Duplicate records
* Data types
* Transaction date and time handling
* Customer identifiers and relationships
* Fields required for KPI calculations

The final data quality documentation should distinguish between issues identified, actions taken and the resulting dataset condition. Missing values should not be described as resolved unless the actual treatment is recorded.

## 8. SQL and Python Validation

SQL and Python were used to investigate the project’s business questions and calculate performance indicators.

The final validation reviewed the analysis outputs and their consistency with the documented results.

Validation evidence should identify:

* The query or calculation tested
* The expected result or definition
* The actual result
* Any discrepancy found
* Any correction made
* The re-test outcome, where applicable

## 9. Power BI Dashboard Testing

The final Power BI dashboard was tested across the following areas:

1. KPI calculations.
2. Monthly transaction trends.
3. Channel performance.
4. Domestic and international transaction comparisons.
5. Risk-review analysis.
6. Slicer functionality.
7. Chart interactions.
8. Visual clarity, formatting and usability.

The detailed testing register should contain the actual outcomes and evidence for the tests performed.

## 10. Business Insights and Recommendations

The earlier analysis identified areas requiring management attention.

### Insight 1: Overall Transaction Performance

**Finding:** The earlier analysis reported an overall transaction success rate of 90.47%.

**Evidence:** The previously documented success-rate calculation.

**Business meaning:** The success rate provides a high-level measure of transaction processing outcomes. The unsuccessful share should be examined further to understand the types and causes of failure.

**Recommended action:** Monitor success rates over time, categorize failed transactions where data permits, and investigate recurring failure patterns.

### Insight 2: Monthly Transaction Performance

**Finding:** Previously reported monthly success rates were 90.01% in January, 90.89% in February and 90.54% in March.

**Evidence:** The earlier monthly analysis.

**Business meaning:** Transaction success varied across the three months, so management should monitor whether the differences are persistent or reflect normal variation.

**Recommended action:** Track monthly performance and investigate material changes using transaction-level details and operational context.

### Insight 3: Channel Performance

**Finding:** The earlier analysis reported a success rate of 91.70% for ATM transactions and 89.75% for Mobile App transactions.

**Evidence:** Previously reported channel-level success rates.

**Business meaning:** The difference may indicate an area for further investigation, but it does not establish the cause of the performance gap.

**Recommended action:** Monitor channel-specific success and failure rates and investigate recurring issues before deciding on operational changes.

### Insight 4: Risk-Review Transaction Value

**Finding:** Earlier analysis reported that risk-review transactions represented 19.60% of transaction count and 28.87% of transaction value.

**Evidence:** Previously reported risk-review shares of count and value.

**Business meaning:** The flagged group represented a larger share of value than of transaction count, suggesting that review prioritization may benefit from considering transaction value as well as volume.

**Recommended action:** Review the flagged transactions using approved review criteria and monitor both the count and value of transactions selected for review. A risk-review flag alone is not evidence of fraud.

### Insight 5: Transaction Types and Risk Review

**Finding:** The earlier analysis identified Transfers and Cash Withdrawals as transaction types with comparatively high risk-review shares.

**Evidence:** Previously reported comparisons across transaction types.

**Business meaning:** These transaction types may warrant closer examination, provided their rates and denominators are confirmed in the final results.

**Recommended action:** Compare risk-review rates and transaction values across types, verify that the comparisons use consistent definitions, and investigate unusual patterns using appropriate review procedures.

### Insight 6: Domestic and International Activity

**Finding:** The earlier analysis reported substantially higher domestic transaction value than international transaction value.

**Evidence:** Previously documented domestic and international transaction comparisons.

**Business meaning:** Domestic activity contributed more to the observed transaction value in the supplied dataset. This alone does not indicate whether international activity is more or less profitable, risky or operationally efficient.

**Recommended action:** Monitor transaction volume, value and success rates separately for domestic and international activity and investigate meaningful changes.

**Validation note:** The six insights above are carried forward from the earlier analysis. Their final inclusion should be supported by the Week 4 validation evidence.

## 11. Final Findings Validation

At least five business findings must be recorded in the final validation register using this structure:

**Finding → Validation Method → Result → Conclusion**

The register should identify whether each finding was confirmed, revised or rejected. If a discrepancy was identified, the correction and re-test should be recorded.

## 12. Assumptions and Limitations

* The analysis is based on the supplied project datasets.
* The datasets may not represent actual production banking activity.
* Risk-review flags are educational indicators, not proof of fraud.
* Differences in observed transaction outcomes do not establish their causes.
* The analysis is limited by the available fields and time period.
* Recommendations require appropriate operational context before implementation.
* Reported values should be treated as final only when supported by validation evidence.

## 13. Final Deliverables

The final project package includes:

* Project report and README.
* Data quality review.
* SQL scripts.
* Python notebook.
* Power BI dashboard.
* KPI definitions and calculation notes.
* Business findings and recommendations.
* SQL/Python validation record.
* Power BI dashboard testing record.
* Business findings validation register.
* Screenshots and other supporting evidence.
* Final presentation.

## 14. Conclusion

The FinTrust project demonstrates an end-to-end data analytics workflow involving business understanding, data quality assessment, SQL querying, Python analysis, Power BI dashboard development and final validation.

The Week 4 deliverable brings these activities together into a documented project package. The reliability of the final business conclusions depends on transparent KPI definitions, consistent results across tools and retained evidence for the validation activities.
