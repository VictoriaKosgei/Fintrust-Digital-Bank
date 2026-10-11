# Week 4 — Final Business Insights and Management Recommendations

## 📌 Project Overview

This project was completed as part of the **AnalystLab Africa Data Analytics Internship** under the FinTrust Digital Bank Financial Intelligence & Digital Banking Support Solution.

The objective of Week 4 was to interpret the findings from the previous SQL analyses, Python exploratory data analysis, and Power BI dashboards, translating them into meaningful business insights and evidence-based management recommendations.

The report focuses on transaction processing performance, channel-level success rates, domestic and international transactions, and risk-review patterns.

## 🎯 Objectives

* Identify key business insights from the completed analysis.
* Evaluate transaction success rates across channels and months.
* Assess domestic and international transaction activity.
* Examine risk-review patterns by transaction value and type.
* Develop practical management recommendations based on analytical evidence.
* Document limitations and areas requiring further investigation.

## 📊 Key Business Insights

### 1. Transaction Processing Performance Is Generally Strong

FinTrust recorded an overall transaction success rate of **90.47%**, with 10,856 successful transactions out of 12,000 transactions.

Monthly success rates were 90.01% in January, 90.89% in February, and 90.54% in March.

**Business implication:** Most transactions were successful, but the remaining unsuccessful transactions present an opportunity to investigate recurring processing issues and improve customer experience.

### 2. Transaction Success Rates Differ Across Channels

The ATM channel recorded the highest success rate at 91.70%, while the Mobile App recorded the lowest at 89.75%.

Other channel results were:

* Web: 90.85%
* POS: 90.85%
* USSD: 90.33%

**Business implication:** Channel-level performance monitoring can help identify where further investigation may improve transaction reliability.

### 3. Domestic Transactions Account for Most Transaction Value

Domestic transactions accounted for 11,520 transactions, representing 96% of total transaction volume. Their total value was NGN 540,481,570.98, compared with NGN 19,995,783.87 for international transactions.

**Business implication:** Domestic activity represents the largest share of the transaction activity analyzed and should be considered in operational planning. International activity remains relevant for service monitoring and further analysis.

### 4. Risk-Reviewed Transactions Represent a Disproportionate Share of Transaction Value

Transactions flagged for risk review accounted for 19.60% of transaction count and approximately 28.87% of total transaction value.

The value of risk-reviewed transactions was NGN 161,783,631.41.

**Business implication:** Risk-reviewed transactions represent a meaningful share of the value processed, making further examination of high-value flagged transactions a useful priority. A review flag does not confirm fraud or financial loss.

### 5. Transfers and Cash Withdrawals Have Relatively High Risk-Review Shares

Transfers recorded a risk-review share of 28.49%, while cash withdrawals recorded 25.31%.

**Business implication:** These transaction types warrant further investigation to understand the factors associated with review flags and assess whether existing review procedures are appropriate.

### 6. Monthly Transaction Success Rates Vary

The success rate increased from 90.01% in January to 90.89% in February, before declining to 90.54% in March.

**Business implication:** Regular monitoring can help management identify changes in performance and investigate whether they coincide with changes in transaction volume, channel activity, or transaction types.

## 💡 Management Recommendations

| No. | Business Area          | Recommended Action                                                            | Intended Outcome                                       |
| --- | ---------------------- | ----------------------------------------------------------------------------- | ------------------------------------------------------ |
| 1   | Transaction success    | Investigate unsuccessful transactions by channel and transaction type.        | Identify recurring causes of transaction failure.      |
| 2   | Channel performance    | Examine Mobile App failures and compare them with higher-performing channels. | Identify opportunities to improve channel reliability. |
| 3   | Transaction activity   | Monitor domestic and international transaction volume and value.              | Support informed operational and service planning.     |
| 4   | Risk review            | Prioritize the examination of high-value transactions flagged for review.     | Improve review prioritization and effectiveness.       |
| 5   | Transaction types      | Investigate risk-review patterns for transfers and cash withdrawals.          | Understand the drivers of review flags.                |
| 6   | Performance monitoring | Track monthly success rates and investigate meaningful changes.               | Detect potential performance issues earlier.           |

## ⚠️ Limitations

* Risk-review flags do not establish confirmed fraud or suspicious intent.
* Differences in transaction success rates do not prove their underlying causes.
* The monthly analysis covers only three months and cannot establish a long-term trend.
* Domestic and international transaction activity differs substantially in volume.
* Management recommendations require further investigation and validation before major operational changes are implemented.

## 🏁 Conclusion

The Week 4 analysis indicates that FinTrust processes most transactions successfully, while differences across channels and months provide opportunities for further investigation. Domestic transactions account for most transaction volume and value, and risk-reviewed transactions represent a notable share of the total value processed.

The recommendations focus on investigating unsuccessful transactions, monitoring channel performance, evaluating high-value risk-reviewed transactions, and maintaining regular KPI monitoring.

Overall, the report demonstrates how data analytics can translate SQL queries, Python analysis, and Power BI reporting into actionable business insights and evidence-based management recommendations.

