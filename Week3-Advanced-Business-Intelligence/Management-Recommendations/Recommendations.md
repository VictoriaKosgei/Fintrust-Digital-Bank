# Week 3 — Part F: Management Recommendations

## 1. Introduction

This section presents evidence-based management recommendations derived from the Week 3 advanced SQL analysis, Python exploratory analysis, Power BI dashboard, and validated business findings for the FinTrust Financial Intelligence & Digital Banking Support Solution.

The recommendations focus on transaction processing performance, channel reliability, risk-review activity, transaction types, international and domestic activity, and performance monitoring.

The recommendations are intended to guide further investigation and operational improvement. Risk-review flags are treated as indicators for review, not proof of fraudulent activity.

---

## Recommendation 1: Investigate Transaction Performance on the Mobile App

### Finding

Transaction success rates differ across channels, with the Mobile App recording the lowest success rate among the channels analysed.

### Evidence

The Week 3 dashboard reported the following success rates:

* ATM: 91.70%
* Web: 90.85%
* POS: 90.85%
* USSD: 90.33%
* Mobile App: 89.75%

### Business Implication

The difference indicates that transaction outcomes are not uniform across channels. The Mobile App may be an area where further investigation could identify opportunities to improve transaction reliability and customer experience. The dashboard alone does not establish the cause of the difference.

### Recommended Action

Management should review failed and reversed Mobile App transactions, group them by failure reason and time period where that information is available, and compare the results with other channels. Use the findings to prioritise corrective action and monitor whether the Mobile App success rate improves.

---

## Recommendation 2: Strengthen the Review of High-Value Risk-Flagged Transactions

### Finding

Transactions marked for risk review account for a larger share of transaction value than of transaction count.

### Evidence

The Week 3 dashboard reported a Risk Review Rate of 19.60%. Risk-reviewed transactions represented approximately 28.87% of total transaction value, equivalent to approximately NGN 161.78 million in the analysed dataset.

### Business Implication

Risk-reviewed transactions account for a substantial portion of the value being processed. Understanding their characteristics may help management prioritise review resources and determine whether existing review procedures are appropriate.

### Recommended Action

Review the value distribution and characteristics of flagged transactions, prioritising higher-value transactions according to FinTrust's established review policies. Compare flagged and non-flagged transactions by channel, transaction type, status, and international scope. Evaluate the results before changing review thresholds or procedures.

**Important limitation:** The dataset's `Risk_Review_Flag` is a synthetic educational indicator. These results do not establish that the transactions are fraudulent or that the current review process is ineffective.

---

## Recommendation 3: Examine Transfer and Cash Withdrawal Risk-Review Patterns

### Finding

Transfer and Cash Withdrawal transactions have the highest reported proportions of risk-review flags among the transaction types analysed.

### Evidence

The Week 3 analysis reported these risk-review proportions:

* Transfer: 28.49%
* Cash Withdrawal: 25.31%

The other displayed transaction types had lower reported proportions.

### Business Implication

The difference suggests that Transfer and Cash Withdrawal activity may warrant more detailed examination within the risk-review process. The observed pattern does not, by itself, explain why the flags occur or demonstrate that these transaction types are inherently riskier.

### Recommended Action

Analyse flagged Transfer and Cash Withdrawal transactions by transaction value, channel, transaction status, international scope, and available review reasons. Use the results to determine whether targeted monitoring or additional review guidance is justified.

---

## Recommendation 4: Maintain Monitoring of Transaction Success Rates Over Time

### Finding

Transaction success rates remained above 90% in the three monthly periods analysed, with modest changes between months.

### Evidence

The Week 3 monthly analysis reported:

| Month    | Transaction Success Rate |
| -------- | -----------------------: |
| January  |                   90.01% |
| February |                   90.89% |
| March    |                   90.54% |

February recorded the highest success rate, followed by a small decline in March.

### Business Implication

The results indicate relatively stable monthly transaction performance during the period analysed. Continued monitoring can help management identify whether future changes are isolated fluctuations or part of a sustained trend.

### Recommended Action

Monitor monthly transaction success and failure rates, compare results with an agreed internal target, and investigate material changes by channel, transaction type, and status. Document the findings and corrective actions so that subsequent reporting periods can be compared consistently.

---

## Recommendation 5: Use Domestic and International Analysis to Support Business Planning

### Finding

Domestic transactions account for substantially more transaction value than international transactions in the analysed dataset.

### Evidence

The Week 3 dashboard reported approximately:

* Domestic transaction value: NGN 0.54 billion
* International transaction value: NGN 0.02 billion

### Business Implication

Domestic activity represents the larger share of transaction value in this dataset. This is useful for understanding the current transaction mix, but it does not establish whether international activity is underperforming or whether demand for international services is low relative to business objectives.

### Recommended Action

Monitor transaction volume, value, average amount, and success rates separately for domestic and international transactions. Before changing product or channel strategy, assess these results against customer needs, business objectives, service costs, and any additional available customer or market evidence.

---

## Recommendation 6: Investigate the Causes of Unsuccessful Transactions

### Finding

Although the overall transaction success rate is above 90%, a portion of transactions are not recorded as successful.

### Evidence

The Week 2 dashboard reported an overall success rate of 90.47%. The Week 3 analysis showed monthly success rates of 90.01%, 90.89%, and 90.54% for January, February, and March, respectively.

### Business Implication

The remaining unsuccessful transactions represent an opportunity to understand potential service issues. However, the status categories alone do not identify the causes of failed, pending, or reversed transactions.

### Recommended Action

Separate failed, pending, and reversed transactions in the detailed analysis. Where available, examine failure reasons, channel, transaction type, transaction time, and subsequent transaction outcomes. Prioritise the most frequent or operationally significant issues and monitor the impact of any changes.

---

## 7. Conclusion

The Week 3 analysis provides a basis for prioritising further investigation into channel performance, unsuccessful transactions, risk-review patterns, and the domestic–international transaction mix.

Management should use these findings to guide evidence collection and targeted improvements rather than assume that observed differences establish their causes. Future analysis should measure whether any implemented changes lead to sustained improvements in transaction reliability and operational oversight.
