CREATE TABLE member_details (
     Customer_ID VARCHAR(75),
	 Age VARCHAR(5),
	 Gender VARCHAR(6),
	 PRIMARY KEY (Customer_ID)
	);

CREATE TABLE transactions (
     Customer_ID VARCHAR(75),
	 Payment_Plan_Days VARCHAR(10),
	 Auto_Renewed VARCHAR(10),
	 Cancelled VARCHAR(1)
);
	
		   
CREATE TABLE user_logs (
     Customer_ID VARCHAR(75),
	 Less_than_25 VARCHAR(4),
	 Above_99 VARCHAR(4),
	 Unique_Songs VARCHAR(4),
	 Total_Secs VARCHAR(25)
);

CREATE TABLE train_dataset (
     Customer_ID VARCHAR(75),
     Is_Churn VARCHAR(1)
);


--Joining Member Initial Details Dataset with Train Dataset
SELECT member_details.Customer_ID, member_details.Gender, member_details.Age, train_dataset.Is_Churn
FROM member_details
INNER JOIN train_dataset ON member_details.Customer_ID = train_dataset.Customer_ID;

--Joining Transactions Dataset with Train Dataset
SELECT transactions.Customer_ID, transactions.Payment_Plan_Days, transactions.Auto_Renewed, transactions.Cancelled, train_dataset.Is_Churn
FROM transactions
INNER JOIN train_dataset ON transactions.Customer_ID = train_dataset.Customer_ID;

--Joining User Logs Dataset with Train Dataset
SELECT user_logs.Customer_ID, user_logs.Less_than_25, user_logs.Above_99, user_logs.Unique_Songs, user_logs.Total_Secs, train_dataset.Is_Churn
FROM user_logs
INNER JOIN train_dataset ON user_logs.Customer_ID = train_dataset.Customer_ID;