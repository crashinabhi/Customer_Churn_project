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

## Presentation

Link to google slides [Google Slides] (https://docs.google.com/presentation/d/1UmXOxAZ9JpmB8rLuez7z_MdUy2Op1KxzBqEdxVQ9hEM/edit#slide=id.gcc00991075_0_4)

## Name – Customer Churn Analysis (Churn Meaning – Attrition)
Background  – 
- Service companies growing exponentially
- Online services major chunk 
- Customer membership key to capture market share

## Source Of Data
- KKBOX offers subscription-based music streaming service. When users signs up for the service, users can choose to either manual renew or auto-renew the service. Users can actively cancel their membership at any time.
- In this dataset, KKBox has included more users' behaviors, in order to enable to explore different user behaviors outside of the train and test sets. For example, a user could actively cancel the subscription, but renew within 30 days.

## KEY QUESTIONS TO ANSWER
- Identify the key features and their combinations from the data that .
- Find the correlation amongst these feature.
- Explore the model to find demographic groups that can be a focus area for the company to implement improved strategies 
- Also explore groups that have a probability to stay can help to learn what drives that decision

## Data
- Member Details.csv
- Transaction.csv
- Uer Log.csv
- Train Dataset.csv

## DATA ANALYSIS - IMPORTANT OUTCOMES
- Age group into groups, 0 represent [0-10], 1 represent [10-20], 2 represent [20-30], 3 represent [30-40], 4 represent [40-50], 5 represent [50-60], 6 represent [60-70] and 7 represent [70-80].
- While considering the registration year distribution against churn data, from year 2010, registration is increased except 2014. 
- There are almost 54% of users who uses 41st payment method. 
- But for payment methods 8, 12, 13, 22, 35, 20, 17 15 and 32 there is high churning rate. 
- Almost a million of users [94.50%] purchased 30 days subscription, while only fewer purchased the rest of the plans. 
- Lot of users (almost 94.25%) have their plan price 99,100, 129, 149 and 180 NTD. 





