# Customer_Churn_Project

![3](https://user-images.githubusercontent.com/73450637/111884435-03feda00-8998-11eb-80b0-3eac79c9b2e8.png)

## Overview of the Project

Customer Churn [or attrition] is considered to be one of the most important metrics of a growing business to evaluate. Customer churn is the percentage of customers that stopped using your company's product or service during a certain time frame. Through our project we are trying to build an algorithm that predicts whether a user will churn after their subscription expires with a leading music streaming service KKBOX [Asia's leading music streaming service]. 

![4](https://user-images.githubusercontent.com/73450637/111884843-90aa9780-899a-11eb-998b-1197132736f8.png)

By the end of the project we are anticipating to discover new insights to why users leave so the service can be proactive in keeping users. 

The following technical analysis are to be done:

> 1. Preprocessing Data for a Machine Language Model
> 2. Compile, Train, and Evaluate the Model
> 3. Optimize the Model

## Resources

* Data Source: [Kaggle WSDM-KKBOX's Churn Prediction Challenge] (https://www.kaggle.com/c/kkbox-churn-prediction-challenge/data)
* Software: Anaconda Navigator 1.9.12, Conda 4.8.4, Jupyter Notebook 6.0.3

## Churn Comparison Outcomes [Listing only 5]

### 1. Comparing attrition rate with gender

![a](https://user-images.githubusercontent.com/73450637/111888006-2e0fc680-89af-11eb-918c-4ffcab162b8c.png)

There is no much difference in attrition rate considering gender as 6.4% and 5.8% of male and female users decided to cancel the suscription.

### 2. Comparing attrition rate by cities

![b](https://user-images.githubusercontent.com/73450637/111888018-47187780-89af-11eb-9387-f890855ae15f.png)

The city ID 13 has highest number of subscribers that didnot opt out of subscription [20.2%] and with that many users they have the highest attrition rate as well [2.60%].

### 3. Comparing attrion rate by age category

![c](https://user-images.githubusercontent.com/73450637/111888023-58618400-89af-11eb-9fe8-6209e89f86de.jpg)

The 3rd age category group [age between 20-30] has the highest number of subscribers and churned customers as well. Upon considering the age category, no much subscribers are there in old age groups. 


### 4. Comparing attrion rate by registration method

![d](https://user-images.githubusercontent.com/73450637/111888030-657e7300-89af-11eb-940d-fdc0ea6b4acf.png)

Users with registration method [ID - 9] has the highest rate of attrition with 6.7%. 

### 5. Comparing attrion rate by registration year

![e](https://user-images.githubusercontent.com/73450637/111888037-716a3500-89af-11eb-8cfb-4bdcd71fedca.png)

Upon considering the registartion year, the average churn rate over the years have been almost within 0.3-1.7% which shows no specific trend in a particular year. 

## Major Outcomes After Data Processing

1. Decoded the age group into groups, 0 represent [0-10], 1 represent [10-20], 2 represent [20-30], 3 represent [30-40], 4 represent [40-50], 5 represent [50-60], 6 represent [60-70] and 7 represent [70-80].
2. The most number of customers are from age group ranging from 1-4 that represents youngsters.
3. While considering the registration year distribution against churn data, from year 2010, registration is increased except 2014. 
4. There are almost 54% of users who uses 41st payment method. 
5. But for payment methods 8, 12, 13, 22, 35, 20, 17 15 and 32 there is high churning rate. 
6. Almost a million of users [94.50%] purchased 30 days subscription, while only fewer purchased the rest of the plans. 
7. Besides 30 days plan, the users who purchased another plan have very high tendency to leave the service. 
8. Lot of users (almost 94.25%) have their plan price 99,100, 129, 149 and 180 NTD. 
9. Variations exist in few city names, but in our data set no city names are given instead codes are being used. 
10. Decide these five values if a user purchases any other plans, then there is a very high tendency of leaving. 

> * Based on the conclusions made through the data processing only those columns with considerable changes are chosen for the machine learning process. 
> * The following columns are chosen from each dataset:

#### a. Columns chosen from Member Details.csv
> Cunstomer_ID, Age and Gender

#### b. Columns chosen from Transactions.csv
> Customer_ID, Payment_Plan_Days, Auto_Renewed, Cancelled

#### c. Columns chosen from User Logs.csv
> Customer_ID, Less_Than_25, Above_99, Unique_Songs, Total_Secs

## Database Creation in pgAdmin

### STEP 1: Table Creation

After data analysis process and shortlisting all the necessary columns, dropping the null values using Jupyter Notebook, I moved on to the next phase of creating the database with just the informations needed. 

#### The key challenges and outcomes were as listed below:

* The dataset had a million columns and outliers. The data was cleaned up using Jupyter notebook. 
* Four columns were created in pgAdmin as shown below:

> First table with member details
![Table 1](https://user-images.githubusercontent.com/73450637/113486576-9798d600-9481-11eb-8d7a-c7652a0b297f.png)

> Second table with train data
![Table 2](https://user-images.githubusercontent.com/73450637/113486599-ada69680-9481-11eb-835a-466a7612b35a.png)

> Third table with transaction data
![Table 3](https://user-images.githubusercontent.com/73450637/113486608-ba2aef00-9481-11eb-9084-a6ca8003e9aa.png)

> Fourth table with user logs
![Table 4](https://user-images.githubusercontent.com/73450637/113486613-c31bc080-9481-11eb-9893-136afa619e0c.png)

### STEP 2: Creating Joins

Once the tables were created, joins were made with each table to the train dataset, the outcome were as shown below:

> Join 1 (inner join) with member details and train dataset
![Join 1](https://user-images.githubusercontent.com/73450637/113486761-58b75000-9482-11eb-92a4-84bedd2bb0fb.png)

> Join 2 (inner join) with transaction details and train dataset
![Join 2](https://user-images.githubusercontent.com/73450637/113486793-6a005c80-9482-11eb-84e0-9dc6908d6bed.png)

> Join 3 (inner join) with user logs and train dataset
![Join 3](https://user-images.githubusercontent.com/73450637/113486802-75538800-9482-11eb-97fa-cf8b82a57ad0.png)





