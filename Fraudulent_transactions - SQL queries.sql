-- Query 1: Find the total number of fraudulent transactions.
SELECT COUNT(*) AS total_fraudulent_transactions
FROM fraudulent_transactions
WHERE isFraud = 1;

-- Query 2: Calculate the total amount involved in fraudulent transactions.
SELECT SUM(amount) AS total_fraudulent_amount
FROM fraudulent_transactions
WHERE isFraud = 1;

-- Query 3: Identify the top 10 customers with the highest number of fraudulent transactions.
SELECT nameOrig, COUNT(*) AS fraudulent_transaction_count
FROM fraudulent_transactions
WHERE isFraud = 1
GROUP BY nameOrig
ORDER BY fraudulent_transaction_count DESC
LIMIT 10;

-- Query 4: Determine the most common transaction type for fraudulent transactions.
SELECT type, COUNT(*) AS transaction_count
FROM fraudulent_transactions
WHERE isFraud = 1
GROUP BY type
ORDER BY transaction_count DESC
LIMIT 1;

-- Query 5: Calculate the average amount for each transaction type.
SELECT type, AVG(amount) AS average_transaction_amount
FROM fraudulent_transactions
GROUP BY type;

-- Query 6: Identify merchants with fraudulent transactions.
SELECT nameDest, COUNT(*) AS fraudulent_transaction_count
FROM fraudulent_transactions
WHERE isFraud = 1 AND nameDest LIKE 'M%'
GROUP BY nameDest;

-- Query 7: Find the top 5 recipients of fraudulent transfers.
SELECT nameDest, COUNT(*) AS fraudulent_transfer_count
FROM fraudulent_transactions
WHERE isFraud = 1 AND type = 'TRANSFER'
GROUP BY nameDest
ORDER BY fraudulent_transfer_count DESC
LIMIT 5;

-- Query 8: Calculate the total amount involved in flagged fraudulent transactions.
SELECT SUM(amount) AS total_flagged_fraudulent_amount
FROM fraudulent_transactions
WHERE isFlaggedFraud = 1;

-- Query 9: Determine the average balance of customers initiating fraudulent transactions.
SELECT nameOrig, AVG(oldbalanceOrg) AS average_initial_balance
FROM fraudulent_transactions
WHERE isFraud = 1
GROUP BY nameOrig;

-- Query 10: Identify the most common transaction type for flagged fraudulent transactions.
SELECT type, COUNT(*) AS transaction_count
FROM fraudulent_transactions
WHERE isFlaggedFrand = 1
GROUP BY type
ORDER BY transaction_count DESC
LIMIT 1;

-- Query 11: Calculate the average amount involved in flagged fraudulent transactions.
SELECT AVG(amount) AS average_flagged_fraudulent_amount
FROM fraudulent_transactions
WHERE isFlaggedFrand = 1;

-- Query 12: Identify recipients with the highest number of fraudulent transactions.
SELECT nameDest, COUNT(*) AS fraudulent_transaction_count
FROM fraudulent_transactions
WHERE isFraud = 1 AND nameDest NOT LIKE 'M%'
GROUP BY nameDest
ORDER BY fraudulent_transaction_count DESC
LIMIT 10;

-- Query 13: Determine the transaction type with the highest average amount.
SELECT type, AVG(amount) AS average_amount
FROM fraudulent_transactions
GROUP BY type
ORDER BY average_amount DESC
LIMIT 1;

-- Query 14: Calculate the total amount received by each recipient.
SELECT nameDest, SUM(amount) AS total_received_amount
FROM fraudulent_transactions
GROUP BY nameDest
ORDER BY total_received_amount DESC
LIMIT 10;

-- Query 15: Identify customers with the highest number of outgoing transactions.
SELECT nameOrig, COUNT(*) AS outgoing_transaction_count
FROM fraudulent_transactions
GROUP BY nameOrig
ORDER BY outgoing_transaction_count DESC
LIMIT 10;

-- Query 16: Determine the average balance of customers who initiated transactions.
SELECT nameOrig, AVG(oldbalanceOrg) AS average_initial_balance
FROM fraudulent_transactions
GROUP BY nameOrig
ORDER BY average_initial_balance DESC
LIMIT 10;

-- Query 17: Find the total number of transactions for each transaction type.
SELECT type, COUNT(*) AS transaction_count
FROM fraudulent_transactions
GROUP BY type;

-- Query 18: Calculate the average balance of recipients.
SELECT nameDest, AVG(newbalanceDest) AS average_final_balance
FROM fraudulent_transactions
GROUP BY nameDest;

-- Query 19: Identify transactions with amounts exceeding 200,000 and are flagged as fraudulent.
SELECT *
FROM fraudulent_transactions
WHERE amount > 200000 AND isFlaggedFrand = 1;

-- Query 20: Calculate the total amount of money transferred in fraudulent transactions that exceed 200,000.
SELECT SUM(amount) AS total_large_fraudulent_amount
FROM fraudulent_transactions
WHERE amount > 200000 AND isFlaggedFrand = 1;
