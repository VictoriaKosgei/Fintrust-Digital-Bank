# Week 4 - A2: KPI & Calculation Accuracy Validation

## Objective

The Week 2 and Week 3 Power BI KPI calculations were independently
validated against the FinTrust customer and transaction datasets.

## Validation Method

The customer and transaction CSV datasets were used to independently
calculate the major dashboard KPIs.

The independently calculated results were then compared with the
corresponding Power BI dashboard values.

## Validation Results

| KPI | Power BI Value | Independent Calculation | Result |
|---|---:|---:|---|
| Total Customers | 1,500 | 1,500 | Match |
| Total Transactions | 12.00K | 12,000 | Match |
| Total Transaction Value | 560.48M | NGN 560,477,354.85 | Match |
| Average Transaction Value | 46.71K | NGN 46,706.45 | Match |
| Successful Transactions | 11K | 10,856 | Match |
| Transaction Success Rate | 90.47% | 90.47% | Match |
| Transactions Per Customer | 8 | 8.00 | Match |
| International Transactions | 480 | 480 | Match |
| Domestic Transactions | 11,520 | 11,520 | Match |
| Risk Review Rate | 19.60% | 19.60% | Match |

## Additional Validation

### Domestic vs International Transaction Value

Domestic transaction value was independently calculated as
approximately NGN 540.48M, while international transaction value
was approximately NGN 20.00M.

The results are consistent with the Week 3 Power BI dashboard.

### Risk Review Transaction Value

Risk-reviewed transactions accounted for approximately
NGN 161.78M, while transactions without a Risk Review Flag accounted
for approximately NGN 398.69M.

The two values reconcile to the overall transaction value of
approximately NGN 560.48M.

## Finding

All major Week 2 and Week 3 KPI calculations tested against the
source datasets were found to be accurate.

## Action

No KPI calculation corrections were required.

## Result

The major Power BI KPI calculations were successfully validated
against the source data.
