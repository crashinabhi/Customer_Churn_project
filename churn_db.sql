CREATE TABLE member_details_churn (
     Customer_ID VARCHAR(75),
	 Age VARCHAR(10),
	 Gender VARCHAR(10),
	 Is_Churn VARCHAR(1),
	 PRIMARY KEY (Customer_ID)
	);

CREATE TABLE transactions_churn (
     Customer_ID VARCHAR(75),
	 Payment_Plan_Days VARCHAR(10),
	 Auto_Renewed VARCHAR(10),
	 Cancelled VARCHAR(1),
	 Is_Churn VARCHAR(1)
);
		   
CREATE TABLE user_logs_churn (
     Customer_ID VARCHAR(75),
	 Less_than_25 VARCHAR(4),
	 Above_99 VARCHAR(4),
	 Unique_Songs VARCHAR(4),
	 Total_Secs VARCHAR(25),
	 Is_Churn VARCHAR(1)
);

--Joining Member Initial Details Dataset with Train Dataset
SELECT member_details_churn.Customer_ID, member_details_churn.Gender, member_details_churn.Age, transactions_churn.Payment_Plan_Days, transactions_churn.Auto_Renewed, transactions_churn.Cancelled, user_logs_churn.Less_than_25, user_logs_churn.Above_99, user_logs_churn.Unique_Songs, user_logs_churn.Total_Secs, member_details_churn.Is_Churn
FROM member_details_churn,
	 transactions_churn,
	 user_logs_churn
	 
WHERE member_details_churn.Customer_ID = transactions_churn.Customer_ID
AND member_details_churn.Customer_ID = user_logs_churn.Customer_ID

