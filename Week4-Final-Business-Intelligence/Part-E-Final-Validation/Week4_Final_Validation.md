# Week 4 — Final Analysis Validation Report

## 📌 Project Overview

This report documents the final validation of the FinTrust Digital Bank analysis completed during Weeks 2, 3, and 4 of the **AnalystLab Africa Data Analytics Internship**.

The validation process assessed KPI calculation accuracy, SQL query execution, Python notebook reproducibility, Power BI dashboard functionality, business finding consistency, and final documentation.

The objective was to confirm that the analytical outputs were accurate, reproducible, and presented correctly in the final dashboard.

## 🎯 Validation Objectives

* Verify dashboard KPIs against independent calculations from the available CSV datasets.
* Confirm that all eight SQL analyses execute as expected.
* Verify Python notebook reproducibility after a kernel restart.
* Validate Power BI KPI values, visualizations, filters, and chart interactions.
* Review the consistency of the final business insights with the analytical results.
* Confirm the completeness of the final validation documentation.

## 🧪 Validation Results

### 1. KPI Calculation Validation — PASS

The dashboard KPI values were compared with independent calculations from the available datasets.

| KPI                        |   Validated Result |
| -------------------------- | -----------------: |
| Total Customers            |              1,500 |
| Total Transactions         |             12,000 |
| Total Transaction Value    | NGN 560,477,354.85 |
| Average Transaction Value  |      NGN 46,706.45 |
| Successful Transactions    |             10,856 |
| Transaction Success Rate   |             90.47% |
| Transactions Per Customer  |                  8 |
| International Transactions |                480 |
| Domestic Transactions      |             11,520 |
| Risk Review Rate           |             19.60% |

**Result:** All listed KPI calculations agreed with the independent calculations, allowing for dashboard display rounding.

### 2. SQL Analysis Validation — PASS

All eight SQL analyses were tested and confirmed to be working as expected.

The analyses covered:

* Customer segment behavior.
* Transaction channel performance and value.
* Successful and unsuccessful transactions.
* Risk-review patterns.
* Domestic and international transactions.
* Customer transaction frequency.
* High-value transaction patterns.
* Transaction trends over time.

The date-time conversion issue encountered during monthly trend analysis was corrected using MySQL's `STR_TO_DATE()` function and the corrected query was confirmed to work.

**Result:** All eight SQL analyses passed the reported execution checks.

### 3. Python Reproducibility Validation — PASS

The Python notebook was saved, the kernel was restarted, and all cells were executed from the beginning.

The execution was recorded, and no errors were reported during the test.

**Result:** The notebook successfully completed the clean-kernel execution test.

### 4. Power BI Dashboard Validation — PASS

The final Power BI dashboard was tested to confirm that the KPIs, visuals, and interactive features worked as intended.

The validation covered:

* Customer and transaction KPIs.
* Total transaction value and average transaction value.
* Successful transactions and transaction success rate.
* Risk-review rate.
* Monthly transaction success rates.
* Channel-level performance.
* Domestic and international transactions.
* Risk-review and customer analysis visuals.
* Slicer and filter functionality.
* Chart interactions.
* Number formatting, titles, labels, and visual readability.
* Restoration of the overall dashboard view after clearing filters.

**Result:** The final dashboard was tested, and its KPIs, visualizations, and interactive features were confirmed to be working as expected.

### 5. Business Finding Validation — PASS

The final business insights were reviewed against the recorded SQL results, Python analysis, and independent KPI calculations.

The review covered:

* Overall transaction success rate of 90.47%.
* Differences in success rates across transaction channels.
* Domestic and international transaction volume and value.
* Risk-reviewed transaction value as a share of total transaction value.
* Risk-review shares for transfers and cash withdrawals.
* Monthly transaction success rates.

**Result:** The business findings were supported by the recorded analytical results. Risk-review flags were interpreted as indicators for further investigation, not as confirmation of fraud.

### 6. Evidence and Documentation Review — PASS

The final validation documentation covers the testing procedures, recorded results, corrected SQL date-time conversion, Python reproducibility test, dashboard checks, and business finding review.

Supporting evidence should be retained in the Week 4 project folder, including the final dashboard file, screenshots, screen recordings, SQL scripts, and validation reports where available.

**Result:** The validation review was completed. Retain the relevant evidence files alongside the reports for traceability.

## 📋 Overall Validation Summary

| Validation Area            | Status | Outcome                                                                 |
| -------------------------- | ------ | ----------------------------------------------------------------------- |
| KPI calculations           | PASS   | Independent calculations agreed with the reported KPIs.                 |
| SQL analyses               | PASS   | All eight analyses were confirmed to work as expected.                  |
| Python reproducibility     | PASS   | Notebook execution completed after a kernel restart.                    |
| Power BI dashboard         | PASS   | KPIs, visuals, slicers, and chart interactions worked as expected.      |
| Business findings          | PASS   | Findings were supported by the recorded analytical results.             |
| Evidence and documentation | PASS   | Final validation review completed; supporting files should be retained. |

## 🏁 Final Conclusion

The final validation of the FinTrust Digital Bank project confirmed that the listed KPI calculations agreed with independent calculations, all eight SQL analyses worked as expected after the date-time correction, and the Python notebook completed execution after a kernel restart.

The final Power BI dashboard was also tested, with its KPIs, visualizations, slicers, and chart interactions confirmed to be working as intended. The business findings were reviewed against the recorded analytical results to ensure that the conclusions and management recommendations were evidence-based.

Overall, the validation process supports the accuracy, reproducibility, and functionality of the completed analysis.

The project demonstrates the application of SQL, Python, Excel, and Power BI in data validation, analytical reporting, dashboard development, and evidence-based business decision-making.

