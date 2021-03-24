CREATE TABLE Train_Dataset (
    Customer_ID varchar(255) NOT NULL,
    Is_Churn varchar(255) NOT NULL
);

CREATE TABLE Member_Details (
    Customer_ID varchar(255),
    City varchar(255),
	Age varchar(255),
	Gender varchar(255),
	Registered_Via varchar(255),
	Registered_on varchar(255)
);

CREATE TABLE Transactions (
    Customer_ID varchar(255) NOT NULL,
    Payment_Method_ID varchar(255) NOT NULL,
	Payment_Plan_Days varchar(255) NOT NULL,
	Plan_List_Price varchar(255) NOT NULL,
	Actual_Amount_Paid varchar(255) NOT NULL,
	Is_Auto_Renew varchar(255) NOT NULL,
	Transaction_Date varchar(255) NOT NULL,
	Membership_Expire_Date varchar(255) NOT NULL,
	Cancelled varchar(255) NOT NULL
);

CREATE TABLE User_logs (
    Customer_ID varchar(255) NOT NULL,
    Date_Streamed varchar(255) NOT NULL,
	Less_than_25 varchar(255) NOT NULL,
	Less_than_50 varchar(255) NOT NULL,
	Less_than_75 varchar(255) NOT NULL,
	Less_than_985 varchar(255) NOT NULL,
	Above_985 varchar(255) NOT NULL,
	Unique_songs varchar(255) NOT NULL,
	Total_secs float(5)
);




