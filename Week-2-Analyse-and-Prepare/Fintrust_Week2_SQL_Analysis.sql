-- Fintrust Digital Bank
-- AnalystLab Africa

CREATE DATABASE fintrust_bank;

USE fintrust_bank;

SELECT COUNT(*) FROM fintrust_customer_data;
SELECT * FROM fintrust_customer_data;

SELECT COUNT(*) FROM fintrust_transaction_data;
SELECT * FROM fintrust_transaction_data;

-- Explaratory Data Analysis
-- Overall Transaction Activity.
-- 1. What is the total number of transactions and the total transaction values?
SELECT
    COUNT(Transaction_ID) AS Total_Transactions,
    SUM(Amount_NGN) AS Total_Transaction_Value,
    AVG(Amount_NGN) AS Average_Transaction_Value
FROM fintrust_transaction_data;
-- Explain what the overall transaction volume and value tell us about 
-- the level of activity in the FinTrust transaction dataset.


-- Transaction Type.
-- 2. Which transaction type has the highest number of transaction volumes and transaction types?
SELECT 
    Transaction_Type,
    COUNT(Transaction_ID) AS Total_Volume,
    SUM(Amount_NGN) AS Total_Value,
    AVG(Amount_NGN) AS Average_Value
FROM fintrust_transaction_data
GROUP BY Transaction_Type
ORDER BY Total_Value DESC;
-- This analysis compares transaction types based on their frequency and monetary value. 
-- It helps FinTrust understand which types of transactions contribute most to 
-- overall transaction activity and value.


-- Channel Usage
 -- 3. Which bank channels are used most frequently?
SELECT 
    Channel,
    COUNT(Transaction_ID) AS Transaction_Count,
    SUM(Amount_NGN) AS Total_Value,
    AVG(Amount_NGN) AS Total_Value
FROM fintrust_transaction_data
GROUP BY Channel
ORDER BY Transaction_Count DESC;
-- This analysis compares customer transaction activity across different banking channels. 
-- It shows which channels have the highest transaction usage and how transaction value differs between channels.


-- Transaction Status
-- 4. What is the distribution between succesful, failed, pending and reversed transactions?
SELECT
    Transaction_Status,
    COUNT(Transaction_ID) AS Total_Count,
    ROUND( COUNT(Transaction_ID) * 100.0 / (SELECT COUNT(*) FROM fintrust_transaction_data),2) AS Percentage
FROM fintrust_transaction_data
GROUP BY Transaction_Status
ORDER BY Total_Count DESC;
-- This analysis shows the distribution of transaction outcomes. It allows FinTrust to monitor 
-- successful transactions alongside failed, pending, and reversed transactions and identify areas 
-- that may require operational attention.


-- Customer Behaviour
-- 5. Which customers have the higest Transaction activity and transaction value?
SELECT
    Customer_ID,
    COUNT(Transaction_ID) AS Total_Transactions,
    SUM(Amount_NGN) AS Total_Transaction_Value,
    AVG(Amount_NGN) AS Average_Transaction_Value
FROM fintrust_transaction_data
GROUP BY Customer_ID
ORDER BY Total_Transaction_Value DESC;
-- This analysis shows how transaction activity and transaction value vary across individual customers. 
-- It can help FinTrust identify customers with higher or lower levels of transaction activity 
-- and understand differences in their transaction behaviour.


-- Transaction Value by Channel
-- 6. How does avg transaction value differ accross different banking channels?
SELECT
    Channel,
    COUNT(Transaction_ID) AS Transaction_Count,
    ROUND(AVG(Amount_NGN), 2) AS Average_Transaction_Value,
    ROUND(SUM(Amount_NGN), 2) AS Total_Transaction_Value
FROM fintrust_transaction_data
GROUP BY Channel
ORDER BY Average_Transaction_Value DESC;
-- This analysis provides an overview of the monetary value processed through the transaction dataset. 
-- Compare the transaction values across channels.


-- Risk Review Patterns
-- 7. What transaction patterns are associated with risk review flags?
SELECT 
    Risk_Review_Flag,
    COUNT(Transaction_ID) AS Transaction_Count,
    ROUND(SUM(Amount_NGN), 2) AS Total_Value,
    ROUND(AVG(Amount_NGN), 2) AS Average_Value
FROM fintrust_transaction_data
GROUP BY Risk_Review_Flag
ORDER BY Transaction_Count DESC;
-- This analysis compares transactions with and without Risk Review Flags based on transaction volume and value. 
-- It can help identify differences in transaction patterns that may warrant further investigation. 
-- The Risk Review Flag should be treated as an analytical indicator and not as confirmation of fraud.


-- Customer Segment
-- 8. How does transaction activity and transaction value differ across customer segments?
SELECT
    c.Customer_Segment,
    COUNT(DISTINCT c.Customer_ID) AS Total_Customers,
    COUNT(t.Transaction_ID) AS Total_Transactions,
    SUM(t.Amount_NGN) AS Total_Transaction_Value,
    AVG(t.Amount_NGN) AS Average_Transaction_Value
FROM fintrust_customer_data c
LEFT JOIN fintrust_transaction_data t
    ON c.Customer_ID = t.Customer_ID
GROUP BY c.Customer_Segment
ORDER BY Total_Transaction_Value DESC;
-- This analysis compares customer segments based on the number of customers, 
-- transaction activity, and transaction value. 
-- It helps FinTrust understand differences in behaviour and financial activity across customer groups.

-- END!!!!!!!!!!!!