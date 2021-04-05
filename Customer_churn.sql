CREATE TABLE Member_Details_Logs_transactions  (
    Customer_ID varchar(255),
    City varchar(255),
	Age varchar(255),
	Gender varchar(255),
	Registered_Via varchar(255),
	Registered_on varchar(255),
	Date_Streamed varchar(255) NOT NULL,
	Less_than_25 varchar(255) NOT NULL,
	Less_than_50 varchar(255) NOT NULL,
	Less_than_75 varchar(255) NOT NULL,
	Less_than_985 varchar(255) NOT NULL,
	Above_985 varchar(255) NOT NULL,
	Unique_songs varchar(255) NOT NULL,
	Total_secs float(20) NOT NULL,
	Payment_Method_ID VARCHAR(255) NOT NULL,
	 Payment_Plan_Days VARCHAR(255) NOT NULL,
	 Plan_List_Price VARCHAR(10) NOT NULL,
	 Actual_Amount_Paid VARCHAR(10) NOT NULL,
	 Auto_Renewed VARCHAR(5) NOT NULL,
	 Transaction_Date VARCHAR(8) NOT NULL,
	 Membership_Expire_Date VARCHAR(8) NOT NULL,
	 Cancelled VARCHAR(1) NOT NULL,
	FOREIGN KEY (Customer_ID) REFERENCES Member_Details (Customer_ID)
);

CREATE TABLE Train_Dataset (
    Customer_ID varchar(255) NOT NULL,
    Is_Churn varchar(255) NOT NULL,
	PRIMARY KEY (Customer_ID)
);

CREATE TABLE Member_Details (
    Customer_ID varchar(255),
    City varchar(255),
	Age varchar(255),
	Gender varchar(255),
	Registered_Via varchar(255),
	Registered_on varchar(255),
	PRIMARY KEY (Customer_ID)
);

SELECT Member_Details_Logs_transactions.City,Member_Details_Logs_transactions.Gender, 
	Member_Details_Logs_transactions.Registered_Via,Member_Details_Logs_transactions.Registered_on ,
	Member_Details_Logs_transactions.Date_Streamed,Member_Details_Logs_transactions.Less_than_25,
	Member_Details_Logs_transactions.Less_than_50 ,Member_Details_Logs_transactions.Less_than_75,
	Member_Details_Logs_transactions.Less_than_985,Member_Details_Logs_transactions.Above_985,
	Member_Details_Logs_transactions.Unique_songs,Member_Details_Logs_transactions.Total_secs,
	Member_Details_Logs_transactions.Payment_Method_ID,Member_Details_Logs_transactions.Payment_Plan_Days,
	Member_Details_Logs_transactions.Plan_List_Price,Member_Details_Logs_transactions.Actual_Amount_Paid,
	Member_Details_Logs_transactions.Auto_Renewed,Member_Details_Logs_transactions.Transaction_Date,
	Member_Details_Logs_transactions.Membership_Expire_Date,Member_Details_Logs_transactions.Cancelled ,
	Train_Dataset.Is_Churn
	FROM Member_Details 
	INNER JOIN Member_Details_Logs_transactions 
	ON Member_Details.Customer_ID=Member_Details_Logs_transactions.Customer_ID
	INNER JOIN Train_Dataset 
	ON Train_Dataset.Customer_ID=Member_Details .Customer_ID;

