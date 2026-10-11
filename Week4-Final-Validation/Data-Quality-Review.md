# Final Data Quality Review

## 1. Objective

The objective of the final data quality review was to assess whether the customer and transaction datasets were suitable for the final analysis, KPI calculations and Power BI dashboard.

## 2. Datasets Reviewed

| Dataset          | Initial record count | Purpose                              |
| ---------------- | -------------------: | ------------------------------------ |
| Customer data    |                1,500 | Customer attributes and segmentation |
| Transaction data |               12,000 | Transaction activity and performance |

The datasets were related through `Customer_ID`, with one customer potentially associated with multiple transactions.

## 3. Quality Checks

| Check                 | Review performed                                             | Final result or evidence                     |
| --------------------- | ------------------------------------------------------------ | -------------------------------------------- |
| Missing values        | Reviewed completeness of important fields                    | Record the actual final counts and treatment |
| Duplicate records     | Checked for duplicate records                                | Record the actual count and any action taken |
| Data types            | Reviewed numeric, categorical and date/time fields           | Record the final data types                  |
| Transaction date/time | Checked date parsing and suitability for time-based analysis | Record the final result                      |
| Customer identifiers  | Reviewed identifier completeness and consistency             | Record the actual result                     |
| Dataset relationship  | Checked the customer-to-transaction relationship             | Record the actual result                     |
| KPI readiness         | Reviewed fields used in key calculations                     | Record any issues and corrections            |

## 4. Missing-Value Review

Earlier checks identified:

* 96 missing values in `Device_Type`.
* 96 missing values in `Location`.

These missing values were documented as data quality issues. Their final treatment must match the actions actually taken during the project. Missing values should not automatically be interpreted as errors or grounds for removing an entire transaction.

**Final treatment:** Complete this section with the actual decision for each field, such as retaining missing values, labelling them as unknown, imputing values where justified, or excluding records only where appropriate and documented.

## 5. Final Assessment

The final data quality checks were completed before finalizing the analysis. The supporting evidence should show the final condition of the datasets and document any unresolved limitations.

## 6. Evidence

Attach or link the available evidence, such as:

* Customer data quality check screenshot.
* Transaction data quality check screenshot.
* Missing-value summary.
* Duplicate-check output.
* Date/time validation output.
* Customer relationship check.

## 7. Conclusion

The data quality review supports transparent reporting of the strengths and limitations of the supplied datasets. The final report should distinguish issues identified from issues corrected and should only describe a quality issue as resolved when supported by evidence.
