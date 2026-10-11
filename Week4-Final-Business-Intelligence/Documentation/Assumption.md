# Project Assumptions

1. `Customer_ID` is the common identifier connecting customer records to transaction records.
2. Each transaction record represents one transaction in the supplied dataset.
3. Transaction amounts are interpreted in Nigerian naira (NGN), as indicated by the `Amount_NGN` field.
4. A high-value transaction is defined in the Week 3 SQL analysis as a transaction whose amount exceeds the overall average transaction amount.
5. A transaction marked for risk review is treated as flagged for further review, not as confirmed fraud.
6. The reported monthly success-rate comparison covers January, February, and March 2026, based on the analyzed dataset.

These assumptions describe how the supplied educational dataset was interpreted. They should not be treated as verified policies of a real financial institution.
