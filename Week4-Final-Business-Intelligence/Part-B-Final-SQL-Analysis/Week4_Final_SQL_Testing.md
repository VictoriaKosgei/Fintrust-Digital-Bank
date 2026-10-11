# Week 4 — Final SQL Analysis Testing

## 1. Purpose

The Week 3 advanced SQL analyses were reviewed and tested as part of
the Week 4 final validation process.

The purpose was to confirm that the queries were technically correct,
produced expected results, and addressed the intended business
questions.

## 2. SQL Analyses Tested

Eight advanced SQL analyses were reviewed:

1. Customer transaction behaviour by segment
2. Transaction value and performance by channel
3. Successful versus failed transactions
4. Risk-review patterns
5. International versus domestic activity
6. Customer-level transaction frequency
7. High-value transaction patterns
8. Transaction trends over time

## 3. Testing Results

| Analysis | Test Result | Status |
|---|---|---|
| Customer behaviour by segment | Query executed and results were consistent with the intended analysis | PASS |
| Transaction value by channel | Query executed and results were consistent with the intended analysis | PASS |
| Successful vs failed transactions | Query executed and results were consistent with the intended analysis | PASS |
| Risk-review patterns | Query executed and results were consistent with the intended analysis | PASS |
| International vs domestic activity | Query executed and results were consistent with the intended analysis | PASS |
| Customer transaction frequency | Query executed and results were consistent with the intended analysis | PASS |
| High-value transaction patterns | Query executed and results were consistent with the intended analysis | PASS |
| Transaction trends over time | Query executed and results were consistent with the intended analysis | PASS |

## 4. Issue Identified and Corrected

### Analysis 8 — Transaction Trends Over Time

The initial query produced a `NULL` value for the transaction month.

### Cause

`Transaction_DateTime` was stored as text in the dataset rather than
being directly interpreted as a MySQL date/time value.

### Correction

`STR_TO_DATE()` was used to explicitly convert the text value into a
date/time before extracting the month using `DATE_FORMAT()`.

### Corrected Approach

```sql
DATE_FORMAT(
    STR_TO_DATE(Transaction_DateTime, '%c/%e/%Y %H:%i'),
    '%Y-%m'
)
