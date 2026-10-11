# Week 4 — Final Business Intelligence and Project Validation

## 1. Project Overview

Week 4 is the final review, validation, and documentation stage of the FinTrust Digital Bank project completed as part of the AnalystLab Africa Data Analytics Internship.

The objective is to consolidate the work completed in Weeks 1–3, verify key analytical results, test the SQL and Python deliverables, finalize the Power BI dashboard, validate business findings, and document recommendations, limitations, and lessons learned.

## 2. Week 4 Objectives

The final phase focuses on:

* Reviewing the earlier project deliverables.
* Independently validating the key Power BI KPIs against the source datasets.
* Testing the eight advanced SQL analyses.
* Checking that the Python notebook can execute from a fresh kernel.
* Testing the final Power BI dashboard, including slicers and chart interactions.
* Documenting final business insights and management recommendations.
* Recording validation evidence, assumptions, limitations, and refinements.

## 3. Project Dataset

The project uses two related datasets:

| Dataset          |             Records | Purpose                                                            |
| ---------------- | ------------------: | ------------------------------------------------------------------ |
| Customer Data    |     1,500 customers | Customer profiles and segmentation                                 |
| Transaction Data | 12,000 transactions | Transaction activity, outcomes, channels, and risk-review analysis |

The datasets are connected using `Customer_ID`, with one customer potentially associated with multiple transactions.

## 4. Key Validated KPIs

| KPI                        |   Validated Result |
| -------------------------- | -----------------: |
| Total Customers            |              1,500 |
| Total Transactions         |             12,000 |
| Total Transaction Value    | NGN 560,477,354.85 |
| Average Transaction Value  |      NGN 46,706.45 |
| Successful Transactions    |             10,856 |
| Transaction Success Rate   |             90.47% |
| Transactions per Customer  |                  8 |
| International Transactions |                480 |
| Domestic Transactions      |             11,520 |
| Risk Review Rate           |             19.60% |

The listed KPI results were compared with independent calculations from the source CSV datasets.

## 5. Week 4 Deliverables

### Part A — Final Data and Analysis Review

This section records the review of previous deliverables, KPI calculation validation, and Python reproducibility testing.

Files:

* `Week4_PartA_Final_Review.md`
* `A2-KPI-Calculation-Validation.md`
* `A4-Python-Reproducibility-Testing.md`

### Part B — Final SQL Analysis

This section contains the advanced SQL analysis and testing documentation. Eight analyses cover customer behavior, transaction channels, transaction outcomes, risk-review patterns, transaction scope, transaction frequency, high-value transactions, and trends over time.

The monthly trend query required a date-time conversion correction because `Transaction_DateTime` was stored as text.

Files:

* `FinTrust_Week3_Advanced_SQL_Analysis.sql`
* `Week4_Final_SQL_Testing.md`

### Part C — Final Power BI Dashboard

The final dashboard builds on the Week 3 dashboard and is saved separately to preserve the earlier version.

The dashboard review covers:

* Customer and transaction KPIs.
* Transaction value and monthly trends.
* Channel performance.
* Customer and transaction analysis.
* Domestic and international transactions.
* Risk-review patterns.
* Slicers, chart interactions, labels, and formatting.

Files:

* `FinTrust_Week4_Final_Dashboard.pbix`
* `A5-Power-BI-Testing.md`

Dashboard test results should be recorded after each check has been completed.

### Part D — Final Business Insights

This section presents evidence-based business findings and recommendations in the format:

**Finding → Evidence → Business Meaning → Recommended Action**

File:

* `Week4_Final_Business_Insights.md`

### Part E — Final Validation

This section consolidates the validation methods, results, testing status, and supporting evidence for the final project.

File:

* `Week4_Final_Validation.md`

## 6. Supporting Evidence

The Supporting-Evidence folder contains relevant screenshots, validation results, testing documentation, and records of corrections.

Large screen recordings may be stored externally, with their share links documented in `Supporting-Evidence/README.md` or `Supporting-Evidence/Testing-Evidence/README.md`.

* [Python Reproducibility Test — add recording link]
* [Power BI Final Testing — add recording link]

Replace these placeholders with your actual share links before publishing.

## 7. Key Business Findings

The analysis identified the following areas for management attention:

1. Overall transaction success rate is 90.47%.
2. Transaction success rates differ across channels, with the Mobile App reporting 89.75% and ATM reporting 91.70%.
3. Domestic transactions account for the majority of transaction volume and value.
4. Transactions flagged for risk review represent approximately 28.87% of total transaction value.
5. Transfers and cash withdrawals have reported risk-review shares of 28.49% and 25.31%, respectively.
6. Monthly transaction success rates vary across January, February, and March.

Risk-review flags are indicators for further review, not confirmation of fraud.

## 8. Limitations

* The dataset is an educational project dataset and may not represent all real-world banking activity.
* Risk-review flags do not establish that fraud occurred.
* Observed differences between channels do not establish their causes.
* The monthly trend covers only three months.
* Management recommendations should be followed by further investigation before operational changes are made.

## 9. Final Validation Status

The major KPI calculations were independently checked against the CSV datasets. The eight SQL analyses were reported as working after the monthly date-time correction, and the Python notebook was executed after restarting the kernel.

The final Power BI testing status must reflect the actual results of the dashboard checks. The project should only be described as fully validated after all required dashboard checks and supporting evidence have been completed.

## 10. Conclusion

Week 4 brings together the analysis, testing, business interpretation, and documentation completed throughout the FinTrust Digital Bank project. The final deliverables provide a traceable record of the analytical results, recommendations, validation procedures, and limitations.

This project demonstrates the application of Excel, SQL, Python, and Power BI to a business-oriented data analytics problem, from initial data assessment through analysis, dashboard development, and final validation.

