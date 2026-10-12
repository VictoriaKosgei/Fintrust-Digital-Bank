# FinTrust Digital Bank — KPI Definitions

## 1. Purpose

This document defines the key performance indicators (KPIs) used in the FinTrust Financial Intelligence & Digital Banking Support Solution. It establishes consistent calculation methods and interpretations for the SQL analysis, Python analysis, and Power BI dashboard.

## 2. KPI Definitions

| KPI                                          | Definition                                                                             | Calculation                                                                        | Business Purpose                                                        |
| -------------------------------------------- | -------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| Total Transactions                           | Total number of transaction records analysed.                                          | Count of transaction records.                                                      | Measures overall transaction activity.                                  |
| Total Transaction Value                      | Total monetary value of transactions.                                                  | Sum of `Amount_NGN`.                                                               | Measures the total value processed.                                     |
| Transaction Success Rate                     | Percentage of transactions recorded as successful.                                     | Successful transactions ÷ Total transactions × 100.                                | Evaluates transaction processing performance.                           |
| Risk-Review Rate                             | Percentage of transactions flagged for further review.                                 | Transactions flagged for review ÷ Total transactions × 100.                        | Measures the proportion of transactions requiring additional attention. |
| Average Transaction Amount                   | Average monetary amount per transaction.                                               | Sum of transaction amounts ÷ Number of transactions.                               | Shows the average value of a transaction.                               |
| Monthly Transaction Success Rate             | Percentage of successful transactions within each month.                               | Successful transactions in a month ÷ Total transactions in that month × 100.       | Tracks changes in transaction performance over time.                    |
| Channel Success Rate                         | Percentage of successful transactions for each transaction channel.                    | Successful transactions for a channel ÷ Total transactions for that channel × 100. | Enables comparison of transaction performance across channels.          |
| Risk-Review Transaction Value                | Total monetary value of transactions flagged for review.                               | Sum of `Amount_NGN` for transactions flagged for review.                           | Measures the transaction value associated with review flags.            |
| Risk-Review Value Share                      | Percentage of total transaction value associated with transactions flagged for review. | Value of flagged transactions ÷ Total transaction value × 100.                     | Helps prioritise transaction value for further investigation.           |
| Domestic vs. International Transaction Value | Comparison of transaction value by transaction category or destination classification. | Sum of transaction amounts for each category.                                      | Supports comparison of domestic and international activity.             |

## 3. Calculation and Interpretation Rules

* **Consistent filters:** Apply the same relevant date range, transaction population, and status definitions when comparing results across SQL, Python, Excel, and Power BI.
* **Transaction success:** Use the dataset's documented transaction status value for successful transactions. Apply the same status definition in every tool.
* **Risk review:** Treat the `Risk_Review_Flag` as an indicator that a transaction requires further review. It does not prove fraud or wrongdoing.
* **Transaction amounts:** Use `Amount_NGN` as the transaction value field, subject to the dataset's documented meaning and any applicable filters.
* **Monthly calculations:** Group transactions by the month derived from `transaction_datetime`.
* **Channel calculations:** Group transactions using the channel field and use a consistent definition of success.
* **Domestic and international analysis:** Use the dataset's documented classification field and apply the same categories in every analysis tool.
* **Rounding:** Retain appropriate precision during calculations and round only when presenting results.
* **Missing or invalid data:** Check relevant fields for missing, invalid, or inconsistent values before calculating KPIs.

## 4. Validation Across Tools

The KPI calculations were reviewed as part of Week 4 final validation.

| Validation Area                              | Validation Method                                                                        |
| -------------------------------------------- | ---------------------------------------------------------------------------------------- |
| Total Transactions                           | Compare transaction counts across SQL, Python, and Power BI.                             |
| Total Transaction Value                      | Compare summed transaction amounts across the analysis tools.                            |
| Transaction Success Rate                     | Verify the successful transaction count, total count, and resulting percentage.          |
| Risk-Review Rate                             | Compare the number of flagged transactions with the total transaction count.             |
| Average Transaction Amount                   | Recalculate the average using the agreed transaction population.                         |
| Monthly Transaction Success Rate             | Compare monthly calculations from SQL or Python with the Power BI trend visual.          |
| Channel Success Rate                         | Compare channel-level transaction counts and success percentages.                        |
| Risk-Review Value Share                      | Verify the flagged transaction value, total transaction value, and resulting percentage. |
| Domestic vs. International Transaction Value | Compare category-level transaction values across the relevant analysis outputs.          |

Record any discrepancies, corrective actions, and final results in `SQL_Python_Validation.md`, `Power_BI_Testing.md`, and `Business_Findings_Validation.md`, as applicable. Do not mark a KPI as successfully validated until its result has been checked against the relevant outputs.

## 5. Previously Reported Project Results

The following figures were reported during earlier project analysis and should be retained only where they match the final validated outputs:

* Overall transaction success rate: **90.47%**
* Risk-review rate: **19.60%**
* January transaction success rate: **90.01%**
* February transaction success rate: **90.89%**
* March transaction success rate: **90.54%**
* ATM transaction success rate: **91.70%**
* Mobile App transaction success rate: **89.75%**
* Risk-review transactions' share of total transaction value: **28.87%**

These values are included for reference and are not, by themselves, evidence that final cross-tool validation passed. Confirm them against the final dataset, SQL outputs, Python results, and Power BI dashboard before using them in the final report or presentation.

## 6. Limitations

* The KPIs describe the supplied project dataset and should not automatically be generalised to a live banking environment.
* Risk-review flags identify records for analysis; they do not establish fraudulent activity.
* KPI accuracy depends on data quality, consistent filters, correct field definitions, and reliable calculations.
* Differences in rounding, filters, missing values, or transaction-status definitions may cause discrepancies between tools.

## 7. Conclusion

This document provides a shared reference for interpreting and calculating FinTrust's key performance indicators. Consistent definitions support reliable reporting, meaningful comparisons, and transparent final validation across SQL, Python, and Power BI.

The KPI definitions form part of the Week 4 final validation documentation for the **AnalystLab Africa Data Analytics Internship**.
