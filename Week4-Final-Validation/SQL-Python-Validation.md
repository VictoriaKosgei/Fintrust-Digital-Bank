# SQL and Python Validation

## 1. Objective

The objective was to verify the correctness, consistency and reproducibility of the final SQL and Python analyses used in the FinTrust project.

## 2. SQL Validation

The final SQL analyses were reviewed and validated.

The review covered the queries used to calculate and examine:

* Transaction counts and total values.
* Transaction success rates.
* Monthly transaction performance.
* Channel performance.
* Domestic and international transactions.
* Risk-review patterns.
* High-value transaction patterns.

Where applicable, the queries were checked for correct joins, grouping, filtering, aggregation, date handling and denominator definitions.

### SQL Validation Register

| Analysis                        | Validation performed                               | Actual result         | Evidence                        |
| ------------------------------- | -------------------------------------------------- | --------------------- | ------------------------------- |
| Overall performance             | Checked count, value and success-rate calculations | Enter verified output | SQL output screenshot or script |
| Monthly trends                  | Checked date grouping and monthly calculations     | Enter verified output | SQL output screenshot or script |
| Channel performance             | Checked channel-specific rates                     | Enter verified output | SQL output screenshot or script |
| Domestic/international analysis | Checked grouping and comparison                    | Enter verified output | SQL output screenshot or script |
| Risk-review analysis            | Checked counts, values and rates                   | Enter verified output | SQL output screenshot or script |
| High-value analysis             | Checked the documented threshold and filtering     | Enter verified output | SQL output screenshot or script |

## 3. Python Validation

The completed Python analysis was reviewed and validated.

The review covered:

* Data loading and column references.
* Data types and date/time handling.
* KPI calculations.
* Grouped and time-based analysis.
* Risk-review calculations.
* Chart outputs and consistency with documented findings.

### Python Validation Register

| Area                 | Validation performed                                 | Actual result         | Evidence        |
| -------------------- | ---------------------------------------------------- | --------------------- | --------------- |
| Data loading         | Checked dataset loading and column references        | Enter verified output | Notebook cell   |
| Data types           | Checked relevant numeric and date/time fields        | Enter verified output | Notebook cell   |
| KPI calculations     | Compared calculations with documented definitions    | Enter verified output | Notebook output |
| Time-based analysis  | Reviewed date grouping and trends                    | Enter verified output | Notebook output |
| Risk-review analysis | Reviewed the calculation of counts, values and rates | Enter verified output | Notebook output |
| Visualizations       | Checked labels, values and interpretation            | Enter verified output | Notebook charts |

## 4. Cross-Tool Consistency

The final SQL outputs, Python calculations and Power BI metrics should be compared using consistent definitions, date ranges and filters.

Where the same KPI is calculated in more than one tool, differences should be investigated rather than assumed to be errors. Differences can arise from filter context, rounding, excluded records or inconsistent definitions.

## 5. Discrepancies and Corrections

Record any differences identified during validation, the underlying cause, the correction made and the re-test outcome.

If no discrepancies were found, record that conclusion only after confirming it from the actual outputs.

## 6. Conclusion

SQL and Python validation was completed. The final validation evidence should retain the actual outputs and document any issues, corrections and re-testing necessary to support the final findings.
