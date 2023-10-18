# Analyzing-and-Detecting-Fraudulent-Transactions-Banking-Data
Utilizing SQL for Data-Driven Fraud Detection in Financial Transactions.
This project aims to develop a predictive model for detecting fraudulent transactions in a financial dataset and extracting valuable insights from the data.

## Dataset Description

Data for the case is available in CSV format having 6362620 rows and 10 columns.

- Data source: [(https://www.kaggle.com/datasets/chitwanmanchanda/fraudulent-transactions-data/data)](https://www.kaggle.com/datasets/chitwanmanchanda/fraudulent-transactions-data/data)

- **Step**: Represents a unit of time, with each step corresponding to one hour (30 days simulation).

- **Type**: Categorizes transactions into types such as CASH-IN, CASH-OUT, DEBIT, PAYMENT, and TRANSFER.

- **Amount**: Denotes the transaction amount in local currency.

- **NameOrig**: Identifies the customer initiating the transaction.

- **OldbalanceOrg**: Shows the initial balance before the transaction.

- **NewbalanceOrig**: Indicates the new balance after the transaction.

- **NameDest**: Identifies the recipient customer.

- **OldbalanceDest**: Displays the recipient's initial balance before the transaction (excluding merchants).

- **NewbalanceDest**: Represents the recipient's new balance after the transaction (excluding merchants).

- **isFraud**: Flags transactions made by fraudulent agents attempting to profit by taking control of customer accounts.

- **isFlaggedFraud**: Flags illegal attempts to transfer over 200,000 in a single transaction.

## Queries and Analysis

In this project, we've conducted a variety of SQL queries to analyze the financial dataset and extract meaningful insights:

1. Total number of fraudulent transactions.
2. Total amount involved in fraudulent transactions.
3. Top 10 customers with the highest number of fraudulent transactions.
4. Most common transaction type for fraudulent transactions.
5. Average amount for each transaction type.
6. Merchants involved in fraudulent transactions.
7. Top 5 recipients of fraudulent transfers.
8. Total amount involved in flagged fraudulent transactions.
9. Average balance of customers initiating fraudulent transactions.
10. Most common transaction type for flagged fraudulent transactions.
11. Average amount involved in flagged fraudulent transactions.
12. Recipients with the highest number of fraudulent transactions.
13. Transaction type with the highest average amount.
14. Total amount received by each recipient.
15. Customers with the highest number of outgoing transactions.
16. Average balance of customers who initiated transactions.
17. Total number of transactions for each transaction type.
18. Average balance of recipients.
19. Transactions exceeding 200,000 and flagged as fraudulent.
20. Total amount of money transferred in large fraudulent transactions.

## Usage

You can execute the provided SQL queries in your database to perform the analysis. Make sure to replace 'fraudulent_transactions' with your actual table name if different.

## Acknowledgments

This project is part of a comprehensive analysis of financial data to detect and prevent fraudulent transactions. The insights gained from this analysis can help financial institutions enhance security and protect their customers' assets.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
