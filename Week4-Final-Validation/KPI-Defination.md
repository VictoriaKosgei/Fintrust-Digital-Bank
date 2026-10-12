# FinTrust KPI Definitions

| KPI                        | Definition                                                                                                               | Validation requirement                                                  |
| -------------------------- | ------------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| Total Transactions         | Count of transactions included in the analysis                                                                           | Confirm transaction counting rules                                      |
| Total Transaction Value    | Sum of transaction amounts within the selected scope                                                                     | Confirm currency, filters and treatment of negative or reversed amounts |
| Transaction Success Rate   | Successful transactions divided by the applicable total transactions, multiplied by 100                                  | Confirm the status defining success and the denominator                 |
| Risk-Review Rate           | Transactions flagged for review divided by the applicable total transactions, multiplied by 100                          | Confirm the flag definition and denominator                             |
| Average Transaction Amount | Total transaction amount divided by the applicable transaction count                                                     | Confirm the population included in the calculation                      |
| Monthly Success Rate       | Successful transactions in a month divided by the applicable total transactions in that month, multiplied by 100         | Confirm date parsing and monthly grouping                               |
| Channel Success Rate       | Successful transactions for a channel divided by the applicable total transactions for that channel, multiplied by 100   | Confirm consistent status definitions across channels                   |
| Risk-Review Value Share    | Transaction value associated with risk-review flags divided by the applicable total transaction value, multiplied by 100 | Confirm the treatment of negative amounts, reversals and filters        |

**Note:** These definitions describe the intended calculations. The final implementation must match the actual SQL, Python and Power BI measures used in the project.
