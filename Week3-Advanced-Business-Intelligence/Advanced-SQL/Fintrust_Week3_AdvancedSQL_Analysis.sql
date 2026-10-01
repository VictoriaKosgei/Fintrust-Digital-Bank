-- Advanced SQL

 SELECT * FROM fintrust_customer_data;
 SELECT * FROM fintrust_transaction_data;
 
-- CUSTOMER BEHAVIOUR BY SEGMENT
-- 1.How does customer transaction activity and transaction value differ across customer segments?
SELECT
	   c.Customer_Segment,
	   COUNT(DISTINCT c.Customer_ID) AS Total_Customers,
       COUNT(t.Transaction_ID) AS Total_Transactions,
       SUM(t.AMOUNT_NGN) AS Total_Transaction_Value,
       AVG(t.AMOUNT_NGN) AS Average_Transaction_Value,
       ROUND(
			COUNT(t.Transaction_ID) * 1.0 / COUNT(DISTINCT c.Customer_ID),2) AS Transactions_Per_Customer
FROM fintrust_customer_data c
LEFT JOIN fintrust_transaction_data t
ON c.Customer_ID = t.Customer_ID
GROUP BY c.Customer_Segment
ORDER BY Total_Transaction_Value DESC;

-- CHANNEL PERFORMANCE
-- 2. How do transaction volume, transaction value and success rate differ across channels?
SELECT
    Channel,
    COUNT(Transaction_ID) AS Total_Transactions,
    SUM(Amount_NGN) AS Total_Transaction_Value,
    AVG(Amount_NGN) AS Average_Transaction_Value,

SUM(
	CASE WHEN Transaction_Status = 'Successful' THEN 1
		ELSE 0
	END
) AS Successful_Transactions,

ROUND(
	SUM(
		CASE WHEN Transaction_Status = 'Successful' THEN 1
			ELSE 0
		END
	) * 100.0 / COUNT(Transaction_ID),2
) AS Success_Rate

FROM fintrust_transaction_data
GROUP BY Channel
ORDER BY Total_Transaction_Value DESC;

-- TRANSACTION OUTCOMES BY CHANNEL
-- 3.How do successful, failed, pending and reversed transactions vary across channels?
SELECT Channel,
	   COUNT(Transaction_ID) AS Total_Transactions,
       SUM(AMOUNT_NGN) AS Total_Transaction_Value,
       AVG(AMOUNT_NGN) AS Average_Transaction_Value,
       
SUM(
    CASE WHEN Transaction_Status = 'Successful' THEN 1
        ELSE 0
	END) AS Successful_Transactions,

SUM(
    CASE WHEN Transaction_Status = 'Failed' THEN 1
        ELSE 0
	END) AS Failed_Transactions,
    
SUM(
    CASE WHEN Transaction_Status = 'Pending' THEN 1
        ELSE 0
	END) AS Pending_Transactions,
    
SUM(
    CASE WHEN Transaction_Status = 'Reversed' THEN 1
        ELSE 0
	END) AS Reversed_Transactions
    
FROM fintrust_transaction_data
GROUP BY Channel
ORDER BY Total_Transactions DESC;

-- RISK REVIEW PATTERNS
-- 4. What transaction patterns are associated with Risk Review Flags?
SELECT Risk_Review_Flag,
       COUNT(Transaction_ID) AS Total_Transactions,
       SUM(AMOUNT_NGN) AS Total_Transaction_Value,
       AVG(AMOUNT_NGN) AS Average_Transaction_Value,
       COUNT(DISTINCT Customer_ID) AS Customer_Involved,
       
       SUM(
           CASE WHEN Transaction_Status = 'Successful' THEN 1
           ELSE 0
		END) AS Successful_Transactions,
        
        SUM(
            CASE WHEN International_Transaction = 'Yes' THEN 1
            ELSE 0
		END) AS International_Transactions

FROM fintrust_transaction_data
GROUP BY Risk_Review_Flag
ORDER BY Total_Transaction_Value;
        
-- INTERNATIONAL VS DOMESTIC TRANSACTIONS
-- 5. How does international transaction activity compare with domestic 
-- transaction activity in terms of volume, value and success rate?
SELECT 
      CASE WHEN International_Transaction = 'Yes' THEN 'International'
          ELSE 'Domestic'
	  END AS Transaction_Scope,
	  COUNT(Transaction_ID) AS Total_Transactions,
      SUM(AMOUNT_NGN) AS Total_Transaction_Value,
      AVG(AMOUNT_NGN) AS Average_Transaction_Value,
      
SUM(
    CASE WHEN Transaction_Status = 'Successful' THEN 1
        ELSE 0
	END) AS Succesful_Transactions,
    
ROUND(
      SUM(
          CASE WHEN Transaction_Status = 'Successful' THEN 1
              ELSE 0
		  END) * 100 / COUNT(Transaction_ID),2 ) AS Success_Rate
          
FROM fintrust_transaction_data
GROUP BY   
     CASE WHEN International_Transaction = 'Yes' THEN 'International'
		 ELSE 'Domestic'
	 END
ORDER BY Total_Transaction_Value DESC;

-- CUSTOMER-LEVEL TRANSACTION FREQUENCY
-- 6.How does transaction frequency vary across individual customers?
WITH Customer_Activity AS(
         SELECT Customer_ID,
				COUNT(Transaction_ID) AS Total_Transactions,
                SUM(Amount_NGN) AS Total_Transaction_Value
FROM fintrust_transaction_data
GROUP BY Customer_ID
),
ranked_customers AS(
    SELECT
        Customer_ID,
        Total_Transactions,
        Total_Transaction_Value,

        NTILE(3) OVER (
            ORDER BY Total_Transactions
        ) AS Activity_Group

    FROM customer_activity
)

SELECT
    CASE
        WHEN Activity_Group = 1 THEN 'Low Activity'
        WHEN Activity_Group = 2 THEN 'Medium Activity'
        WHEN Activity_Group = 3 THEN 'High Activity'
    END AS Activity_Level,

    COUNT(Customer_ID) AS Total_Customers,

    SUM(Total_Transactions) AS Total_Transactions,

    SUM(Total_Transaction_Value) AS Total_Transaction_Value,

    ROUND(
        AVG(Total_Transactions),
        2
    ) AS Average_Transactions_Per_Customer

FROM ranked_customers

GROUP BY Activity_Group

ORDER BY Activity_Group;
     
-- HIGH VALUE TRANSACTION PATTERNS
-- 7. What transaction types, channels and statuses are associated with high-value transactions?
SELECT Transaction_Type,
       Channel,
       Transaction_Status,
       COUNT(Transaction_ID) AS High_Value_Transactions,
       SUM(Amount_NGN) AS Total_High_Value,
       AVG(Amount_NGN) AS Average_High_Value
       
FROM fintrust_transaction_data
WHERE Amount_NGN > (
         SELECT AVG(Amount_NGN) FROM fintrust_transaction_data)
GROUP BY Transaction_Type,
		 Channel,
         Transaction_Status
ORDER BY Total_High_Value DESC;

-- TRANSACTION TRENDS OVER TIME
-- 8. How do transaction volume, transaction value and success rates change over time?
WITH monthly_transactions AS (
    SELECT
        DATE_FORMAT(STR_TO_DATE(Transaction_DateTime, '%c/%e/%Y %H:%i'),'%Y-%m') AS Transaction_Month,
        COUNT(Transaction_ID) AS Total_Transactions,
        SUM(Amount_NGN) AS Total_Transaction_Value,
        AVG(Amount_NGN) AS Average_Transaction_Value,
        SUM(CASE WHEN Transaction_Status = 'Successful' THEN 1
			 ELSE 0
		END) AS Successful_Transactions

FROM fintrust_transaction_data
GROUP BY DATE_FORMAT(STR_TO_DATE(Transaction_DateTime, '%c/%e/%Y %H:%i'),'%Y-%m')
)

SELECT
    Transaction_Month,
    Total_Transactions,
    Total_Transaction_Value,
    Average_Transaction_Value,
    Successful_Transactions,

    ROUND(Successful_Transactions * 100.0 / Total_Transactions, 2) AS Success_Rate

FROM monthly_transactions
ORDER BY Transaction_Month;