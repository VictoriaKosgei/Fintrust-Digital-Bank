# Final Business Findings Validation

## 1. Objective

The objective was to verify that the business findings used in the final FinTrust report were supported by the SQL analysis, Python outputs and Power BI dashboard.

## 2. Validation Method

Each finding was reviewed using the following structure:

**Finding → Validation Method → Result → Conclusion**

The review considered calculation accuracy, consistency of KPI definitions, relevant filters and denominators, and agreement between the analysis and the business interpretation.

## 3. Validation Register

### Finding 1 — Overall Transaction Success Rate

**Finding:** Earlier analysis reported an overall transaction success rate of 90.47%.

**Validation Method:** Recalculate the number of successful transactions divided by the applicable total transaction count. Compare the result with the SQL output, Python calculation and Power BI KPI.

**Result:** Record the actual recalculated value and whether it matches the previously reported value.

**Conclusion:** Mark as confirmed, revised or rejected based on the observed result.

### Finding 2 — Monthly Transaction Success Rates

**Finding:** Earlier analysis reported success rates of 90.01% for January, 90.89% for February and 90.54% for March.

**Validation Method:** Recalculate the monthly success rates using the transaction date/time field and the same success definition. Compare the results with the monthly analysis and dashboard.

**Result:** Record the actual monthly values and any differences.

**Conclusion:** State whether the monthly finding is confirmed or requires revision.

### Finding 3 — Channel Performance

**Finding:** Earlier analysis reported success rates of 91.70% for ATM and 89.75% for Mobile App transactions.

**Validation Method:** Calculate the success rate for each channel using a consistent denominator and compare the results with the SQL output, Python analysis and Power BI visuals.

**Result:** Record the actual channel-level values.

**Conclusion:** State whether the comparison remains supported by the validated results.

### Finding 4 — Risk-Review Share of Transaction Value

**Finding:** Earlier analysis reported that risk-review transactions represented 19.60% of transaction count and 28.87% of transaction value.

**Validation Method:** Recalculate the flagged transaction count as a share of the relevant total count and the flagged transaction value as a share of the relevant total value. Check that the definitions and denominators are consistent.

**Result:** Record the actual count share and value share.

**Conclusion:** Confirm or revise the finding based on the calculations. Do not treat a risk-review flag as proof of fraud.

### Finding 5 — Transaction Types and Risk-Review Patterns

**Finding:** Earlier analysis identified Transfers and Cash Withdrawals as transaction types with comparatively high risk-review shares.

**Validation Method:** Compare the risk-review rates for these transaction types with those of other types, using the same definition and appropriate denominators.

**Result:** Record the observed rates and comparisons.

**Conclusion:** Confirm, revise or reject the finding based on the actual results.

## 4. Refinement and Re-testing

For every discrepancy identified:

1. Describe the discrepancy.
2. Identify its cause where possible.
3. Record the correction made to the query, calculation, visual or written finding.
4. Repeat the relevant validation check.
5. Record the re-test outcome.

If no discrepancy was found, document the evidence supporting that conclusion.

## 5. Overall Conclusion

The final status of each business finding must be based on the actual validation results. Only findings supported by the final evidence should be retained as confirmed conclusions in the project report.

## 6. Evidence Index

| Finding                        | Supporting evidence                               |
| ------------------------------ | ------------------------------------------------- |
| Overall transaction success    | SQL/Python calculation and Power BI KPI           |
| Monthly success rates          | Monthly SQL/Python output and dashboard visual    |
| Channel performance            | Channel calculation and dashboard visual          |
| Risk-review value share        | Risk-review calculations and supporting visual    |
| Transaction-type risk patterns | Transaction-type comparison and supporting visual |
