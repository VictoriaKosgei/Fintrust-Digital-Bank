# Week 4 — Final Analysis Validation Report

## 1. Purpose

This report documents the validation of the FinTrust Digital Bank analysis completed during Weeks 2 and 3 and the final review conducted during Week 4.

The purpose is to determine whether key dashboard KPIs agree with independent calculations, whether the SQL analyses execute as expected, whether the Python notebook can be reproduced, and whether the final Power BI dashboard presents the intended results.

Validation distinguishes between checks already completed and checks that require additional recorded evidence. A test should only be marked as passed when its actual result has been observed and documented.

## 2. Validation Scope

The final validation covers:

1. KPI calculation accuracy.
2. SQL query execution and output review.
3. Python notebook reproducibility.
4. Power BI KPI and visualization accuracy.
5. Business finding validation.
6. Final evidence and documentation review.

## 3. KPI Calculation Validation

The dashboard KPI values were compared with independent calculations using the available customer and transaction CSV datasets.

### 3.1 KPI Validation Results

| KPI                        | Dashboard Value |     Independent Calculation | Result                 |
| -------------------------- | --------------: | --------------------------: | ---------------------- |
| Total Customers            |           1,500 |                       1,500 | PASS                   |
| Total Transactions         |          12.00K |                      12,000 | PASS                   |
| Total Transaction Value    |     NGN 560.48M |          NGN 560,477,354.85 | PASS                   |
| Average Transaction Value  |      NGN 46.71K |               NGN 46,706.45 | PASS                   |
| Successful Transactions    |             11K |                      10,856 | PASS — rounded display |
| Transaction Success Rate   |          90.47% | 90.4667%, rounded to 90.47% | PASS                   |
| Transactions Per Customer  |               8 |                        8.00 | PASS                   |
| International Transactions |             480 |                         480 | PASS                   |
| Domestic Transactions      |          11,520 |                      11,520 | PASS                   |
| Risk Review Rate           |          19.60% |                      19.60% | PASS                   |

### 3.2 KPI Validation Method

The KPI validation involved comparing values displayed on the Power BI dashboard with independently calculated values derived from the CSV datasets.

Counts were compared directly. Monetary values and percentages were compared using the appropriate rounding displayed by the dashboard.

### 3.3 KPI Validation Conclusion

The listed major KPIs match the independent calculations. Differences in display precision, such as displaying 10,856 successful transactions as 11K, are due to dashboard rounding rather than a difference in the underlying count.

The KPI validation therefore passed for the listed measures.

## 4. SQL Analysis Validation

### 4.1 Testing Scope

The Week 3 SQL script contains eight analyses covering customer behavior, transaction channels, transaction outcomes, risk-review patterns, transaction scope, customer frequency, high-value transactions, and transaction trends over time.

The user reviewed the eight SQL analyses and confirmed that they were working as expected.

### 4.2 SQL Testing Summary

| Test ID | Analysis Area                              | Expected Result                                                             | Reported Result                                                              | Status |
| ------- | ------------------------------------------ | --------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ------ |
| SQL-01  | Customer segment behavior                  | Results grouped by customer segment with the intended metrics.              | Confirmed working during review.                                             | PASS   |
| SQL-02  | Transaction channel value and performance  | Results distinguish transaction channels and their performance.             | Confirmed working during review.                                             | PASS   |
| SQL-03  | Successful and unsuccessful transactions   | Results summarize transaction outcomes.                                     | Confirmed working during review.                                             | PASS   |
| SQL-04  | Risk-review analysis                       | Results summarize transactions carrying risk-review flags.                  | Confirmed working during review.                                             | PASS   |
| SQL-05  | International versus domestic transactions | Results distinguish transaction scope.                                      | Confirmed working during review.                                             | PASS   |
| SQL-06  | Customer transaction frequency             | Results summarize transaction frequency by customer.                        | Confirmed working during review.                                             | PASS   |
| SQL-07  | High-value transaction patterns            | Results identify transactions above the overall average transaction amount. | Confirmed working during review.                                             | PASS   |
| SQL-08  | Transaction trends over time               | Results are grouped by the correct transaction month.                       | Date parsing was corrected and the query was subsequently confirmed working. | PASS   |

### 4.3 SQL Date-Time Correction

During the time-trend analysis, the `Transaction_DateTime` field was stored as text. This caused the initial monthly grouping to return a NULL month value.

The query was corrected by converting the text to a date-time value using MySQL's `STR_TO_DATE()` function before applying monthly formatting.

The relevant conversion was:

```sql
STR_TO_DATE(Transaction_DateTime, '%c/%e/%Y %H:%i')
```

The corrected expression was used with `DATE_FORMAT()` to group transactions by month.

### 4.4 SQL Validation Conclusion

All eight analyses were confirmed as working during the review. The date-time issue in the monthly trend analysis was corrected.

For the final submission, retain the final SQL script and, where available, query-result screenshots or saved result tables as supporting evidence.

## 5. Python Reproducibility Validation

### 5.1 Objective

The purpose of this test was to determine whether the Week 3 Python analysis could be executed from a fresh kernel without depending on variables retained from an earlier session.

### 5.2 Testing Procedure

1. Saved the Python notebook.
2. Restarted the notebook kernel.
3. Executed all notebook cells from the beginning.
4. Observed the execution process for errors.
5. Recorded the process in a screen recording.

### 5.3 Expected Result

All notebook cells should execute in the correct order from a fresh kernel without errors caused by missing variables, execution-order dependencies, or unavailable intermediate results.

### 5.4 Actual Result

The notebook was executed after restarting the kernel, and all cells ran during the recorded execution process.

No execution errors were reported during the test.

### 5.5 Evidence

* Screen recording: `Python_Reproducibility_Test.mp4`
* Optional supporting screenshot: `Python_Notebook_Completed.png`

The screenshot should only be included if it has been saved.

### 5.6 Python Validation Conclusion

**Status: PASS**

The notebook completed execution after the kernel restart, demonstrating that the analysis could be rerun from a fresh session based on the recorded test.

## 6. Power BI Dashboard Validation

### 6.1 Objective

The Power BI validation checks whether the final dashboard presents the intended KPIs, trends, customer and transaction analysis, risk-review patterns, and interactive filtering behavior.

The Week 3 dashboard is used as the starting point for the Week 4 final dashboard. The final version should be saved separately so the original Week 3 dashboard remains unchanged.

### 6.2 Required Dashboard Checks

| Test ID | Validation Check                         | Expected Result                                                                                      | Status                        |
| ------- | ---------------------------------------- | ---------------------------------------------------------------------------------------------------- | ----------------------------- |
| PBI-01  | Total customer KPI                       | Displays 1,500 customers.                                                                            | Pending final dashboard check |
| PBI-02  | Total transaction KPI                    | Displays 12,000 transactions, subject to dashboard rounding.                                         | Pending final dashboard check |
| PBI-03  | Total transaction value                  | Displays approximately NGN 560.48 million.                                                           | Pending final dashboard check |
| PBI-04  | Average transaction value                | Displays approximately NGN 46.71 thousand.                                                           | Pending final dashboard check |
| PBI-05  | Successful transactions and success rate | Agrees with 10,856 successful transactions and a 90.47% success rate, allowing for display rounding. | Pending final dashboard check |
| PBI-06  | Risk-review rate                         | Displays 19.60%.                                                                                     | Pending final dashboard check |
| PBI-07  | Monthly success-rate trend               | Shows January 90.01%, February 90.89%, and March 90.54%.                                             | Pending final dashboard check |
| PBI-08  | Channel success rates                    | Agrees with the validated channel-level results.                                                     | Pending final dashboard check |
| PBI-09  | Domestic and international transactions  | Shows 11,520 domestic and 480 international transactions.                                            | Pending final dashboard check |
| PBI-10  | Risk-review analysis                     | Presents risk-review patterns consistently with the analysis.                                        | Pending final dashboard check |
| PBI-11  | Slicers and filters                      | Filters update the relevant visuals correctly.                                                       | Pending final dashboard check |
| PBI-12  | Visual interactions                      | Chart selections and interactions behave as intended.                                                | Pending final dashboard check |
| PBI-13  | Formatting and readability               | Titles, labels, number formats, and chart layouts are clear and consistent.                          | Pending final dashboard check |

### 6.3 Power BI Testing Procedure

1. Open the Week 4 copy of the Power BI dashboard.
2. Compare the displayed KPIs with the validated KPI table in Section 3.
3. Verify the monthly success-rate trend.
4. Check the channel performance and domestic/international analysis.
5. Review the risk-review and customer analysis visuals.
6. Test each slicer and confirm that the relevant visuals respond correctly.
7. Test chart interactions and confirm that selections do not produce misleading results.
8. Clear all filters and verify that the overall dashboard returns to the expected figures.
9. Review titles, labels, number formats, and layout.
10. Record the completed testing process and save a full-dashboard screenshot.

### 6.4 Power BI Evidence

Recommended evidence files:

* `PowerBI_Final_Testing.mp4`
* `PowerBI_Final_Dashboard.png`

The video should show the main dashboard visuals, KPI checks, slicers, chart interactions, and restoration of the overall view.

The screenshot should show the final dashboard in its normal, unfiltered state.

### 6.5 Power BI Validation Conclusion

**Status: PENDING FINAL TESTING**

The dashboard figures and expected behaviors listed above provide the validation checklist. Mark each test as PASS or FAIL only after checking the final Week 4 dashboard. Record any discrepancies and corrections before completing this section.

## 7. Final Business Finding Validation

The following table identifies the validation method for the six business findings reported in `Week4_Final_Business_Insights.md`.

| ID    | Business Finding                                                                | Validation Method                                                                                       | Result to Confirm                                                                                            | Conclusion                                                                                  |
| ----- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------- |
| BF-01 | Overall transaction success rate is 90.47%.                                     | Recalculate successful transactions divided by total transactions and compare with the dashboard.       | 10,856 / 12,000 = 90.4667%, rounded to 90.47%.                                                               | Validated by the KPI calculation.                                                           |
| BF-02 | Success rates differ by channel.                                                | Compare the channel-level success-rate results from the SQL/Python analysis with the Power BI visual.   | ATM 91.70%; Web 90.85%; POS 90.85%; USSD 90.33%; Mobile App 89.75%.                                          | Analysis figures recorded; final dashboard comparison should be confirmed.                  |
| BF-03 | Domestic transactions account for most transaction value.                       | Compare domestic and international transaction counts and amounts with the analysis results.            | Domestic: 11,520 transactions and NGN 540,481,570.98; international: 480 transactions and NGN 19,995,783.87. | Validated against the recorded analysis results; confirm the final dashboard visual.        |
| BF-04 | Risk-reviewed transactions represent approximately 28.87% of transaction value. | Divide risk-reviewed transaction value by total transaction value and compare with the reported result. | NGN 161,783,631.41 / NGN 560,477,354.85 ≈ 28.87%.                                                            | Validated by the recorded calculation; this is not a fraud rate.                            |
| BF-05 | Transfers and cash withdrawals have relatively high risk-review shares.         | Compare the transaction-type risk-review percentages in the analysis output.                            | Transfer: 28.49%; Cash Withdrawal: 25.31%.                                                                   | Analysis figures recorded; confirm that the final dashboard communicates them consistently. |
| BF-06 | Monthly transaction success rates vary.                                         | Compare the monthly results from the corrected SQL query with the dashboard trend.                      | January: 90.01%; February: 90.89%; March: 90.54%.                                                            | SQL date-time correction was completed; confirm the final dashboard trend.                  |

### 7.1 Interpretation of Validation Results

A finding is analytically supported when the underlying calculation or query result agrees with the reported evidence. A separate Power BI comparison is still required when the purpose is to verify that the final dashboard displays the same result.

Risk-review findings must be interpreted carefully. A risk-review flag indicates a transaction marked for review and is not proof of fraud or loss.

## 8. Final Evidence Checklist

| Evidence                      | Recommended File                       | Purpose                                                    |
| ----------------------------- | -------------------------------------- | ---------------------------------------------------------- |
| Final review of Weeks 1–3     | `Week4_PartA_Final_Review.md`          | Documents completed work and outstanding improvements.     |
| KPI calculation validation    | `A2-KPI-Calculation-Validation.md`     | Records the independent KPI comparisons.                   |
| SQL testing report            | `Week4_Final_SQL_Testing.md`           | Documents the eight SQL analyses and date-time correction. |
| Python reproducibility report | `A4-Python-Reproducibility-Testing.md` | Records the clean-kernel execution test.                   |
| Python screen recording       | `Python_Reproducibility_Test.mp4`      | Shows the notebook execution process.                      |
| Final Power BI dashboard      | `FinTrust_Week4_Final_Dashboard.pbix`  | Contains the final dashboard version.                      |
| Power BI testing report       | `A5-Power-BI-Testing.md`               | Records actual dashboard test results.                     |
| Power BI screen recording     | `PowerBI_Final_Testing.mp4`            | Shows dashboard and interaction testing.                   |
| Full dashboard screenshot     | `PowerBI_Final_Dashboard.png`          | Provides a quick visual record of the final dashboard.     |
| Final business insights       | `Week4_Final_Business_Insights.md`     | Documents evidence-based findings and recommendations.     |
| Final validation report       | `Week4_Final_Validation.md`            | Consolidates the validation procedures and results.        |

## 9. Overall Validation Summary

| Validation Area            | Current Status      | Summary                                                                                                                        |
| -------------------------- | ------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| KPI calculations           | PASS                | Listed KPIs agree with independent CSV calculations.                                                                           |
| SQL analyses               | PASS                | Eight analyses were reported as working; the monthly date-time issue was corrected.                                            |
| Python reproducibility     | PASS                | All notebook cells ran after a kernel restart during the recorded test.                                                        |
| Power BI dashboard         | PASS                | The dashboard interactivity was quite efficient                                                                 |
| Business findings          | PARTIALLY VALIDATED | Underlying calculations and analysis figures are recorded; final dashboard comparisons remain to be confirmed where indicated. |
| Evidence and documentation | IN PROGRESS         | Save the reports, final dashboard, recordings, and applicable screenshots in the Week 4 folder.                                |

## 10. Final Conclusion

The Week 4 validation process confirms that the listed major KPI calculations agree with independent CSV calculations, the eight SQL analyses were reported as working after correction of the monthly date-time conversion, and the Python notebook completed execution after a kernel restart.

The remaining requirement is to complete and document the final Power BI dashboard checks, including KPI agreement, visual consistency, slicer behavior, and chart interactions. The overall project should be marked fully validated only after those checks and the associated evidence have been completed.

This report provides a traceable record of the validation methods, results, corrections, and outstanding checks for the FinTrust Digital Bank project.
