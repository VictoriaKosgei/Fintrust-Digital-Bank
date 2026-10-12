# FinTrust Digital Bank — Assumptions and Limitations

## 1. Purpose

This document records the assumptions made and limitations identified during the FinTrust Financial Intelligence & Digital Banking Support Solution. It supports the interpretation of the findings, KPI calculations, SQL and Python analysis, and final Power BI dashboard developed during the AnalystLab Africa Data Analytics Internship.

## 2. Assumptions

The following assumptions guided the analysis.

### 2.1 Dataset Representativeness

The supplied customer and transaction datasets were treated as the primary source of information for the project. The analysis assumes that the records are sufficiently representative of the activity intended to be examined within the scope of this educational exercise.

### 2.2 Customer and Transaction Relationships

`Customer_ID` was used to connect customer records with transaction records. The analysis assumes that the identifiers are suitable for linking the two datasets and that each transaction is associated with the appropriate customer where a valid customer identifier is available.

### 2.3 Transaction Amounts

`Amount_NGN` was treated as the transaction amount expressed in Nigerian naira, in accordance with the dataset's field definition. Transaction-value calculations assume that the field contains usable numerical values and is interpreted consistently across SQL, Python, and Power BI.

### 2.4 Transaction Status

The transaction status field was used to identify successful and unsuccessful transactions. The success-rate calculations assume that the status categories were interpreted consistently across the analysis tools.

### 2.5 Date and Time

`transaction_datetime` was used to analyse transaction activity over time. The analysis assumes that the available date and time values can be interpreted consistently and grouped into the appropriate reporting periods.

### 2.6 High-Value Transactions

For the SQL analysis of high-value transaction patterns, a high-value transaction was defined as a transaction with an `Amount_NGN` greater than the overall average transaction amount. This is an analytical threshold for the project, not an official banking or fraud-detection standard.

### 2.7 Risk-Review Flags

`Risk_Review_Flag` was interpreted as an indicator that a transaction may require further review. The analysis assumes that the supplied flag can be used to compare flagged and unflagged transactions, but it does not treat the flag as confirmation of fraud.

### 2.8 KPI Consistency

Consistent KPI definitions, transaction-status rules, and relevant filters were used when comparing results across SQL, Python, and Power BI. Any differences in filtering, missing-value handling, or rounding could affect comparisons.

## 3. Limitations

### 3.1 Scope of the Dataset

The analysis was limited to the customer and transaction records supplied for the project. The findings may not represent all banking customers, transaction types, channels, or operating conditions.

### 3.2 Missing Data

The initial data-quality review identified missing values in some fields, including `Device_Type` and `Location`. Missing or incomplete information may limit analysis involving device usage, geographic patterns, and related transaction characteristics.

### 3.3 No Independent Fraud Confirmation

Risk-review flags do not independently establish that a transaction is fraudulent. The project did not use independently verified fraud labels to confirm whether flagged transactions represented actual fraud.

### 3.4 Limited Business Context

The supplied data may not contain every factor needed to explain transaction outcomes. For example, the analysis may not account for detailed reasons for transaction failures, customer behaviour outside the dataset, bank operating procedures, or external payment-system conditions.

### 3.5 Time Coverage

Time-based findings are limited to the dates available in the supplied dataset. Trends observed during the analysed period should not automatically be interpreted as long-term patterns or used to predict future performance.

### 3.6 Analytical Thresholds

The average transaction amount used to define high-value transactions is a project-specific analytical choice. Different thresholds may produce different results, and the threshold should not be interpreted as an official risk limit.

### 3.7 Dashboard and Tool Limitations

The Power BI dashboard presents summaries based on the underlying data, calculations, filters, and visual configuration. Dashboard testing can identify inconsistencies and interaction issues, but it cannot independently establish the completeness or accuracy of every source record.

### 3.8 No Live Banking-System Integration

This project was conducted as an educational analytics exercise. The analysis did not establish real-time transaction monitoring, live fraud detection, production banking-system integration, or operational service-level performance.

### 3.9 Findings Are Descriptive

The analysis identifies patterns and associations in the available data. These patterns do not necessarily demonstrate that one factor caused a particular transaction outcome.

## 4. Implications for Interpretation

The findings and recommendations should be interpreted within the scope of the supplied dataset and the assumptions documented above.

* Business recommendations should be supported by the actual SQL, Python, and Power BI results.
* Missing or incomplete data should be considered when interpreting affected findings.
* Risk-review results should guide further investigation rather than be treated as proof of fraud.
* High-value transaction results should be interpreted using the project's stated threshold.
* Further validation with more complete operational data would be necessary before applying the findings to a live banking environment.

## 5. Conclusion

The assumptions and limitations documented here provide context for interpreting the FinTrust analysis and its recommendations. Making these constraints explicit supports transparent reporting and helps prevent conclusions that go beyond what the available data can demonstrate.

This document forms part of the Week 4 final validation deliverables for the **FinTrust Financial Intelligence & Digital Banking Support Solution**, completed under the **AnalystLab Africa Data Analytics Internship**.
