# Week 4 — Final Business Insights and Recommendations

## 1. Project Overview

The FinTrust Digital Bank project focuses on analyzing customer and transaction data to evaluate transaction performance, customer activity, transaction channels, domestic and international transactions, and risk-review patterns.

The final business insights are based on the Week 2 and Week 3 SQL analyses, Python exploratory data analysis, and Power BI dashboards. The findings have been reviewed against the available analysis results and KPI calculations.

The purpose of this report is to translate the analytical results into meaningful business insights and practical recommendations for management.

## 2. Final Business Insights

### Insight 1: Transaction Processing Performance Is Generally Strong

**Finding**

FinTrust demonstrates a high overall transaction success rate, although unsuccessful transactions remain an area for investigation.

**Evidence**

* Total transactions: 12,000
* Successful transactions: 10,856
* Overall transaction success rate: 90.47%
* January success rate: 90.01%
* February success rate: 90.89%
* March success rate: 90.54%

**Business Meaning**

The overall success rate indicates that most transactions are processed successfully. However, approximately 9.53% of transactions are unsuccessful. These transactions may create customer inconvenience, increase support requests, and affect customer confidence if the underlying causes are not addressed.

The monthly figures also show that success rates vary over time, meaning transaction performance should be monitored continuously.

**Recommended Action**

Management should establish regular monitoring of transaction success rates, investigate unsuccessful transactions by channel and transaction type, and identify recurring causes of transaction failure. Improvements should be prioritized according to the frequency and business impact of each identified cause.

### Insight 2: Transaction Success Rates Differ Across Channels

**Finding**

Transaction processing performance varies by channel, indicating that customers may experience different success rates depending on how they transact.

**Evidence**

| Channel    | Transaction Success Rate |
| ---------- | -----------------------: |
| ATM        |                   91.70% |
| Web        |                   90.85% |
| POS        |                   90.85% |
| USSD       |                   90.33% |
| Mobile App |                   89.75% |

The ATM channel has the highest reported success rate, while the Mobile App has the lowest among the five channels.

**Business Meaning**

The differences suggest that channel-level performance should be assessed separately rather than relying only on the overall success rate. The Mobile App's comparatively lower success rate may represent an opportunity to improve the customer experience. However, the figures alone do not establish the causes of the difference.

**Recommended Action**

Management should investigate unsuccessful Mobile App transactions by transaction type, time, device type, and other available attributes. The team should compare these results with higher-performing channels and identify specific technical or process issues before implementing improvements.

### Insight 3: Domestic Transactions Account for Most Transaction Value

**Finding**

Domestic transactions account for substantially more transaction value than international transactions.

**Evidence**

* Domestic transaction count: 11,520
* International transaction count: 480
* Domestic transaction value: NGN 540,481,570.98
* International transaction value: NGN 19,995,783.87
* Total transaction value: NGN 560,477,354.85

Domestic transactions represent 96% of transaction volume, while international transactions represent 4%.

**Business Meaning**

FinTrust's transaction activity is concentrated in the domestic market. Domestic transactions therefore represent the largest share of the transaction activity analyzed. International transactions contribute a smaller share of the total value but remain relevant for understanding customer needs and supporting service planning.

**Recommended Action**

Management should use domestic transaction patterns to guide operational capacity planning while continuing to monitor international transaction activity. Further analysis should assess international transaction types, success rates, customer segments, and risk-review patterns before decisions are made about expanding or changing international services.

### Insight 4: Risk-Reviewed Transactions Represent a Larger Share of Transaction Value Than Transaction Count

**Finding**

Transactions flagged for risk review account for a disproportionately large share of total transaction value compared with their share of transaction count.

**Evidence**

* Total transactions: 12,000
* Risk review rate by transaction count: 19.60%
* Risk-reviewed transaction value: NGN 161,783,631.41
* Transaction value without a risk-review flag: NGN 398,693,723.44
* Risk-reviewed value as a share of total transaction value: approximately 28.87%

**Business Meaning**

Although risk-reviewed transactions account for 19.60% of transaction count, they represent approximately 28.87% of total transaction value. This indicates that the transactions flagged for review carry a meaningful portion of the value processed.

The risk-review flag is an indicator for further review, not confirmation that a transaction is fraudulent. The analysis does not establish whether any flagged transaction represents actual fraud or loss.

**Recommended Action**

Management should review high-value transactions carrying risk-review flags, examine the reasons for the flags, and assess whether the existing review process is appropriately prioritizing transactions. Any changes to risk controls should be based on further investigation and verified outcomes rather than treating every flagged transaction as fraudulent.

### Insight 5: Transfers and Cash Withdrawals Have Relatively High Risk-Review Shares

**Finding**

Transfers and cash withdrawals have relatively high proportions of transactions flagged for risk review compared with other transaction types in the analysis.

**Evidence**

* Transfer risk-review share: 28.49%
* Cash Withdrawal risk-review share: 25.31%

These percentages describe the risk-review shares reported for the respective transaction types.

**Business Meaning**

Transfers and cash withdrawals are useful priorities for further examination because a relatively large proportion of their activity is flagged for review. Understanding the patterns behind these flags could help management improve review efficiency and determine whether additional monitoring is appropriate.

These results do not establish that transfers or cash withdrawals are inherently fraudulent or that the flags represent confirmed suspicious activity.

**Recommended Action**

Management should examine flagged transfers and cash withdrawals by transaction amount, channel, time, transaction status, and customer segment. The team should determine whether the patterns reflect expected customer behavior, existing review rules, data characteristics, or issues requiring further investigation.

### Insight 6: Monthly Transaction Success Rates Change Over Time

**Finding**

Transaction success rates vary across the three months analyzed.

**Evidence**

| Month    | Transaction Success Rate |
| -------- | -----------------------: |
| January  |                   90.01% |
| February |                   90.89% |
| March    |                   90.54% |

The success rate increased from January to February and decreased slightly in March.

**Business Meaning**

The monthly variation indicates that overall performance can change over time. Monitoring the trend helps management identify periods that may require additional investigation. The three monthly observations alone are insufficient to establish a long-term trend or determine the causes of the changes.

**Recommended Action**

Management should monitor monthly transaction success rates and compare changes with transaction volumes, channel performance, transaction types, and unsuccessful transaction patterns. Additional months of data should be reviewed before making conclusions about long-term performance.

## 3. Management Recommendations Summary

| No. | Business Area                       | Recommended Action                                                    | Intended Outcome                                         |
| --- | ----------------------------------- | --------------------------------------------------------------------- | -------------------------------------------------------- |
| 1   | Transaction success                 | Investigate unsuccessful transactions by channel and type.            | Identify recurring causes of transaction failure.        |
| 2   | Channel performance                 | Prioritize investigation of Mobile App performance.                   | Identify opportunities to improve channel reliability.   |
| 3   | Domestic and international activity | Monitor transaction volume and value by transaction scope.            | Support informed operational and service planning.       |
| 4   | Risk review                         | Prioritize examination of high-value transactions flagged for review. | Improve the prioritization and effectiveness of reviews. |
| 5   | Transaction types                   | Examine risk-review patterns for transfers and cash withdrawals.      | Understand the drivers of review flags.                  |
| 6   | Performance monitoring              | Track monthly success rates and investigate meaningful changes.       | Detect emerging performance issues earlier.              |

## 4. Limitations and Interpretation

The recommendations above are based on the available FinTrust educational dataset and the analysis completed during Weeks 2 and 3.

The following limitations should be considered:

1. **Risk-review flags are not confirmed fraud outcomes.** They indicate transactions marked for review and cannot independently establish fraud, financial loss, or suspicious intent.
2. **Observed differences do not prove causation.** The lower Mobile App success rate does not establish that the application itself caused transaction failures.
3. **The monthly trend covers three months.** Additional data is required to establish longer-term patterns or seasonality.
4. **Domestic and international activity differs in volume.** Comparisons should consider both transaction counts and transaction values.
5. **Recommendations require follow-up investigation.** Management should verify the causes of observed patterns before introducing operational or policy changes.

## 5. Conclusion

The final analysis indicates that FinTrust processes most transactions successfully, with measurable differences in success rates across channels and months. Domestic transactions account for most transaction volume and value, while transactions flagged for risk review represent a notable share of total transaction value. Transfers and cash withdrawals also warrant further examination because of their reported risk-review shares.

The recommended next steps are to investigate unsuccessful transactions, monitor channel performance, examine high-value risk-reviewed transactions, and maintain regular KPI monitoring. These actions should be supported by additional investigation and validated operational evidence before major decisions are made.
