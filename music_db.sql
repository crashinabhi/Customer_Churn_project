-- Creating tables for Final Challenge
CREATE TABLE member_details (
     Customer_ID VARCHAR(30) NOT NULL,
     City VARCHAR(2) NOT NULL,
	 Age VARCHAR(2) NOT NULL,
	 Gender VARCHAR(6) NOT NULL,
	 Registered_Via VARCHAR(2) NOT NULL,
	 Registered_On VARCHAR(8) NOT NULL,
     PRIMARY KEY (Gender),
     UNIQUE (Customer_ID)
);

CREATE TABLE train_dataset (
     Customer_ID VARCHAR(30) NOT NULL,
     Is_Churn VARCHAR(1) NOT NULL,
     PRIMARY KEY (Is_Churn),
     UNIQUE (Customer_ID)
);

CREATE TABLE transactions (
     Customer_ID VARCHAR(30) NOT NULL,
     Payment_Method_ID VARCHAR(2) NOT NULL,
	 Payment_Plan_Days VARCHAR(2) NOT NULL,
	 Plan_List_Price VARCHAR(3) NOT NULL,
	 Actual_Amount_Paid VARCHAR(3) NOT NULL,
	 Auto_Renewed VARCHAR(1) NOT NULL,
	 Transaction_Date VARCHAR(8) NOT NULL,
	 Membership_Expire_Date VARCHAR(8) NOT NULL,
	 Cancelled VARCHAR(1) NOT NULL,
	 PRIMARY KEY (Payment_Method_ID),
     UNIQUE (Customer_ID)
);

CREATE TABLE user_logs (
     Customer_ID VARCHAR(30) NOT NULL,
     Date_Streamed VARCHAR(8) NOT NULL,
	 Less_than_25 VARCHAR(4) NOT NULL,
	 Less_than_50 VARCHAR(4) NOT NULL,
	 Less_than_75 VARCHAR(4) NOT NULL,
	 Less_than_99 VARCHAR(4) NOT NULL,
	 Above_99 VARCHAR(4) NOT NULL,
	 Unique_Songs VARCHAR(4) NOT NULL,
	 Total_Secs VARCHAR(10) NOT NULL,
     PRIMARY KEY (Unique_Songs),
     UNIQUE (Customer_ID)
);
