# SQL Refinement — Transaction Date-Time Conversion

## Issue

The monthly transaction trend query initially returned a NULL month because `Transaction_DateTime` was stored as text rather than a date-time value.

## Correction

The query was updated to parse the text using MySQL's `STR_TO_DATE()` function before grouping the records by month.

```sql
STR_TO_DATE(Transaction_DateTime, '%c/%e/%Y %H:%i')
```

The parsed value was then formatted using `DATE_FORMAT()` to support monthly grouping.

## Outcome

The user subsequently confirmed that the corrected monthly trend analysis was working.

## Lesson Learned

Date and time fields should be checked for their actual data types and formats before performing time-based analysis. Explicit date-time conversion helps prevent incorrect grouping and NULL date labels.
