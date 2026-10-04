1. Overall Transaction Performance Remains Strong
Finding

FinTrust maintains a high level of transaction success, indicating generally strong transaction processing performance.

Evidence

The Week 2 dashboard reported an overall Transaction Success Rate of 90.47%, while the Week 3 dashboard shows approximately 11K successful transactions out of 12K total transactions.

Validation

The Week 3 monthly analysis confirms that the success rate remained above 90% across January, February, and March:

January: 90.01%
February: 90.89%
March: 90.54%

Validation result: Supported.

Business Meaning

The consistently high success rate suggests that FinTrust's transaction processing is generally reliable. However, the remaining unsuccessful transactions should continue to be monitored to identify specific channels, transaction types, or periods requiring improvement.

2. Transaction Performance Differs Across Channels
Finding

Transaction success performance varies across channels, meaning some channels process transactions more successfully than others.

Evidence

The Week 3 channel analysis shows:

ATM: 91.70%
Web: 90.85%
POS: 90.85%
USSD: 90.33%
Mobile App: 89.75%
Validation

The deeper Week 3 channel analysis confirms that channel performance is not identical. ATM has the highest success rate, while Mobile App has the lowest among the five channels.

Validation result: Supported.

Business Meaning

Channel-level differences can help FinTrust identify where transaction failures are more common. The Mobile App may require further investigation into failed transactions, system reliability, or customer experience.

3. Domestic Transactions Generate Much Higher Transaction Value
Finding

Domestic transactions account for substantially more transaction value than international transactions.

Evidence

The Week 3 dashboard shows approximately:

Domestic: NGN 0.54B
International: NGN 0.02B
Validation

The Week 3 international-versus-domestic analysis confirms a substantial difference in transaction value between the two transaction scopes.

Validation result: Supported.

Business Meaning

Domestic transactions represent the primary source of transaction value in the analysed dataset. International transactions form a much smaller portion of overall transaction value, suggesting that domestic banking activity is currently the dominant business activity in this dataset.

4. Risk-Review Transactions Represent a Significant Share of Transaction Value
Finding

Risk-review activity represents a meaningful portion of FinTrust's transaction activity and warrants further investigation.

Evidence

The Week 3 dashboard shows:

19.60% Risk Review Rate
Risk-reviewed transactions account for approximately 28.87% of total transaction value
Approximately NGN 161.78M is associated with risk-reviewed transactions.
Validation

The Week 3 risk analysis confirms that risk-reviewed transactions represent a smaller share of transaction count but a larger share of transaction value.

Validation result: Supported.

Business Meaning

The higher proportion of transaction value associated with risk-review flags means FinTrust should pay particular attention to the characteristics of these transactions. This does not indicate confirmed fraud because the Risk_Review_Flag is a synthetic educational indicator, but it can be used to identify patterns requiring additional review.

5. Transfer and Cash Withdrawal Transactions Have Higher Risk-Review Shares
Finding

Some transaction types have a higher proportion of risk-review flags than others.

Evidence

The Week 3 risk-review analysis shows:

Transfer: 28.49%
Cash Withdrawal: 25.31%
Deposit: 16.19%
Airtime/Data: 15.19%
Bill Payment: 12.81%
Card Purchase: 13.02%
Validation

The deeper Week 3 analysis confirms that Transfer and Cash Withdrawal have the highest proportions of risk-review flags among the transaction types shown.

Validation result: Supported.

Business Meaning

Transfer and cash withdrawal activity should receive closer monitoring within FinTrust's risk-review processes. Further investigation could examine whether these patterns are also associated with transaction value, channels, international activity, or transaction outcomes.

6. Transaction Success Performance Changes Over Time
Finding

Transaction success performance changes slightly across the months rather than remaining completely constant.

Evidence

The Week 3 trend analysis shows:

Month	Success Rate
January	90.01%
February	90.89%
March	90.54%

February records the highest success rate.

Validation

The Week 3 trend analysis confirms that success rate increased from January to February and then declined slightly in March.

Validation result: Supported.

Business Meaning

The relatively small monthly changes suggest that transaction performance is generally stable, but monitoring monthly trends can help FinTrust identify periods when transaction reliability improves or deteriorates.
